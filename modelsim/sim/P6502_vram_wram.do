onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider 6502
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/clk_in
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/rst_in
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/ready_in
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/nnmi_in
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/nres_in
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/nirq_in
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/d_in
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/d_out
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/a_out
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/r_nw_out
add wave -noupdate -divider ControlPath
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/CONTROL_PATH/rdy
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/clk_div
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/CONTROL_PATH/currentState
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/uins
add wave -noupdate /nes_top_tb/DUV/rp2a03_blk/cpu_blk/CONTROL_PATH/decIns
add wave -noupdate -divider DataPath
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/data_in
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/data_out
add wave -noupdate -radix hexadecimal -childformat {{/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(7) -radix hexadecimal} {/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(6) -radix hexadecimal} {/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(5) -radix hexadecimal} {/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(4) -radix hexadecimal} {/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(3) -radix hexadecimal} {/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(2) -radix hexadecimal} {/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(1) -radix hexadecimal} {/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(0) -radix hexadecimal}} -subitemconfig {/nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(7) {-height 15 -radix hexadecimal} /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(6) {-height 15 -radix hexadecimal} /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(5) {-height 15 -radix hexadecimal} /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(4) {-height 15 -radix hexadecimal} /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(3) {-height 15 -radix hexadecimal} /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(2) {-height 15 -radix hexadecimal} /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(1) {-height 15 -radix hexadecimal} /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q(0) {-height 15 -radix hexadecimal}} /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/P_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/DB
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/SB
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/S_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/PCH_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/PCL_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/ABH_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/ABL_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/address
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/AI_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/BI_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/AC_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/X_q
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/rp2a03_blk/cpu_blk/DATA_PATH/Y_q
add wave -noupdate -divider Vram
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/vram_blk/vram_bram/we
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/vram_blk/vram_bram/addr_a
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/vram_blk/vram_bram/din_a
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/vram_blk/vram_bram/dout_a
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/vram_blk/vram_bram/ram
add wave -noupdate -divider Wram
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/wram_blk/wram_bram/we
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/wram_blk/wram_bram/addr_a
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/wram_blk/wram_bram/din_a
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/wram_blk/wram_bram/dout_a
add wave -noupdate -radix hexadecimal /nes_top_tb/DUV/wram_blk/wram_bram/ram
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16644437 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {16643625 ns} {16647471 ns}
