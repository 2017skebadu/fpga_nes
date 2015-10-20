onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider cart
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/clk_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/cfg_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/cfg_upd_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/prg_nce_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prg_a_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/prg_r_nw_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prg_d_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prg_d_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chr_a_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/chr_r_nw_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chr_d_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chr_d_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/ciram_nce_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/ciram_a10_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_we
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/prgrom_bram_dout
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_we
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/cart_blk/chrrom_pat_bram_dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11634670 ns} 0}
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
WaveRestoreZoom {11939200 ns} {12003200 ns}
