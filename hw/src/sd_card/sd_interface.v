`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2022 08:11:34 PM
// Design Name: 
// Module Name: sd_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sd_top(
    input wire      CLK_100MHZ,
    input wire      SD_CD,
    output wire     SD_SCK,
    output wire     SD_CMD,
    inout wire[3:0] SD_DAT,
    input wire      BTNC,
    output wire[15:0] led
    );
    
wire rst = BTNC;
wire spiClk;
wire spiMiso;
wire spiMosi;
wire spiCS;

assign SD_DAT[2] = 1;
assign SD_DAT[3] = spiCS;
assign SD_CMD = spiMosi;
// assign SD_RESET = 0; Don't need this output
assign SD_SCK = spiClk;
assign spiMiso = SD_DAT[0];
assign SD_DAT[1] = 1;

reg clk_25mhz = 0;
reg rd = 0;
reg wr = 0;
reg [7:0] din = 0;
wire [7:0] dout;
wire byte_available;
wire ready;
wire ready_for_next_byte;
reg [31:0] adr = 32'h00_00_00_00;

reg [15:0] bytes = 0;
reg [1:0] bytes_read = 0;

   
wire [4:0] state;
    
parameter STATE_INIT = 0;
parameter STATE_START = 1;
parameter STATE_WRITE = 2;
parameter STATE_READ = 3;
reg [1:0] test_state = STATE_START; 

reg [24:0] counter = 0; 
reg [1:0] divide;
reg loading = 0;
assign led[15] = loading;
assign led[14:10] = state;
assign led[9] = ready;
assign led[8] = test_state[0];
assign led[7:0] = bytes[15:8];
sd_controller sdcont(.cs(spiCS), 
                     .mosi(spiMosi),
                     .miso(spiMiso),
                     .sclk(spiClk),
                     .rd(rd),
                     .wr(wr),
                     .reset(rst),
                     .din(din),
                     .dout(dout),
                     .byte_available(byte_available),
                     .ready(ready),
                     .address(adr), 
                     .ready_for_next_byte(ready_for_next_byte),
                     .clk(clk_25mhz), 
                     .status(state)
);

always @(posedge clk_25mhz) begin
        if(rst) begin
            bytes <= 0;
            bytes_read <= 0;
            din <= 0;
            wr <= 0;
            rd <= 0;
            test_state <= STATE_INIT; 
        end
        else begin
            case (test_state)
                STATE_INIT: begin
                    if(ready) begin
                        test_state <= STATE_START;
                        wr <= 1;
                        din <= 8'hAA;
                    end
                end
                STATE_START: begin
                    if(ready == 0) begin // during write
                        adr <= { 7'b0000000, counter};
                        test_state <= STATE_WRITE;
                        wr <= 0;
                    end
                end
                STATE_WRITE: begin
                    if(ready) begin
                        if(counter < 24'h00F000) begin
                            test_state <= STATE_START;
                            wr <= 1;
                        end 
                        else begin
                            test_state <= STATE_READ;
                            rd <= 1;
                        end
                    end
                    else if(ready_for_next_byte) begin
                        din <= counter[7:0];
                    end
                end
                STATE_READ: begin // only reads the first 2 bytes, then halts the 512 byte sector read.
                    if(byte_available) begin
                        rd <= 0; // stops new sector from being buffered into output, aka SD card set to IDLE state
                        if(bytes_read == 0) begin // first clock cycle read the first byte in the bus
                            bytes_read <= 1;
                            bytes[15:8] <= dout;
                        end
                        else if(bytes_read == 1) begin // second clock cycle read the second byte in the bus
                            bytes_read <= 2;
                            bytes[7:0] <= dout;  
                        end
                    // never leaves this state without reset
                    end
                end
            endcase
        end
    end

always @(posedge CLK_100MHZ) begin
        if(divide < 2'b11) begin
            divide <= divide + 1'b1;
        end
        else begin
            divide <= 2'b00;
            clk_25mhz <= ~clk_25mhz;
		end
	end

always @(posedge clk_25mhz) begin
    if( counter < 24'hFFFFFF) begin
        counter <= counter + 1'b1;
    end
    else begin
        counter <= 24'h000000;
        loading <= ~loading;
    end
end


endmodule
