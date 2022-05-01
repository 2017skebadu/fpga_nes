`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2022 09:53:41 PM
// Design Name: 
// Module Name: sd_testbench
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


module sd_testbench(

    );
 

reg      clk_tb = 0;
wire      SD_CD_tb;
wire     SD_SCK_tb;
wire     SD_CMD_tb;
wire[3:0] SD_DAT_tb;
wire      BTNC_tb;
wire[15:0] led_tb;

sd_top sd_thing(.CLK_100MHZ(clk_tb),
                .SD_CD(SD_CD_tb),
                .SD_SCK(SD_SCK_tb),
                .SD_CMD(SD_CMD_tb),
                .SD_DAT(SD_DAT_tb),
                .BTNC(BTNC_tb),
                .led(led_tb)  
    );
    
    
always #10 clk_tb=~clk_tb;

endmodule
