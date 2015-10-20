onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider PRG-ROM
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_sim/clk
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_sim/we
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_sim/addr_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_sim/q_addr_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_sim/dout_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_sim/din_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_sim/ram
add wave -noupdate -divider CHR-ROM
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/clk
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/we
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/addr_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/q_addr_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/dout_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/IMAGE
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/din_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/ram
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/DATA_WIDTH
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_sim/ADDR_WIDTH
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {18990 ns} 0}
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
WaveRestoreZoom {99525 ns} {100025 ns}
