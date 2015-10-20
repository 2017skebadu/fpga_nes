onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider wram
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/wram_blk/clk_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/wram_blk/en_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/wram_blk/r_nw_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/wram_blk/a_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/wram_blk/d_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/wram_blk/d_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/wram_blk/wram_bram_we
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/wram_blk/wram_bram_dout
add wave -noupdate -divider vram
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/vram_blk/clk_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/vram_blk/en_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/vram_blk/r_nw_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/vram_blk/a_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/vram_blk/d_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/vram_blk/d_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/vram_blk/vram_bram_we
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/vram_blk/vram_bram_dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11621250 ns} 0}
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
WaveRestoreZoom {11618670 ns} {11650670 ns}
