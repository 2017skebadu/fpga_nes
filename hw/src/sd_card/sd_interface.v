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


module sd_interface(
  input clk,
  input cart_cfg_upd,
  input switch_load,
  input [7:0] din_BRAM,
  output[7:0] dout_BRAM,
  output      w_out,
  output reg [14:0] addr_BRAM,
  input      SD_CD,
  output     SD_SCK,
  output     SD_CMD,
  inout [3:0] SD_DAT,
  output reg [7:0] LED
);

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


reg rd = 0;
reg wr = 0;
reg bram_wr = 0;
assign w_out = bram_wr;
wire [7:0] din; // this was reg
wire [7:0] dout;
wire byte_available;
wire ready;
wire ready_for_next_byte;
//reg [31:0] adr = 32'h00_00_00_00;

reg [15:0] bytes = 0;
reg [1:0] bytes_read = 0;

   
wire [4:0] state;
    
parameter STATE_INIT = 0;
parameter STATE_START = 1;
parameter STATE_WRITE = 2;
parameter STATE_READ = 3;
reg [1:0] test_state = STATE_INIT; 

reg writing_time = 0;
reg [7:0] sector = 0;

assign din = din_BRAM;
assign dout = dout_BRAM;

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
                     .address({16'h0000, sector, 8'h00}), 
                     .ready_for_next_byte(ready_for_next_byte),
                     .clk(clk), 
                     .status(state)
);

always @(posedge clk) begin
//        if(rst == 0) begin
//            bytes <= 0;
//            bytes_read <= 0;
//            din <= 0;
//            wr <= 0;
//            rd <= 0;
//            test_state <= STATE_INIT; 
//        end
        begin //else begin
            case (test_state)
                STATE_INIT: begin
                    if(cart_cfg_upd) begin
                        test_state <= STATE_START;
                        wr <= 1;
                        addr_BRAM <= 0;
                        sector <= 1;
                        LED <= 0;
                    end
                end
                STATE_START: begin
                    if(ready == 0) begin // during write
                        test_state <= STATE_WRITE;
                        LED[7:0] <= sector;
                        wr <= 0;
                    end
                end
                STATE_WRITE: begin
                    if(ready) begin
                        if(sector < 64) begin
                            test_state <= STATE_START;
                            sector <= sector + 1;
                            LED[7:0] <= sector;
                            wr <= 1;
                        end 
                        else if(switch_load) begin
                            test_state <= STATE_READ;
                            LED[7:0] <= 8'hFF;
                            addr_BRAM <= 0;
                            sector <= 0;
                            rd <= 1;
                            wr <= 0;
                        end
                    end
                    else if(ready_for_next_byte) begin
                        //din <= din_BRAM;
                        addr_BRAM <= addr_BRAM + 1;
                    end
                end
                STATE_READ: begin // only reads the first 2 bytes, then halts the 512 byte sector read.
                    if(byte_available) begin
                        bram_wr <= 1;
                        addr_BRAM <= addr_BRAM + 1;
                    // never leaves this state without reset
                    end
                    else if(ready) begin
                        bram_wr <= 0;
                        if(sector < 64) begin
                            sector <= sector + 1;
                        end
                        else begin
                            rd <= 0;
                        end
                    end
                    else begin
                        bram_wr <= 0;
                    end
                end
            endcase
        end
    end


endmodule
