onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider rp2a03
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/clk_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/rst_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/rdy_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/d_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/nnmi_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/nres_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/d_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/a_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/r_nw_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/brk_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/jp_data1_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/jp_data2_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/jp_clk
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/jp_latch
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/mute_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/audio_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/dbgreg_sel_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/dbgreg_d_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/dbgreg_wr_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/dbgreg_d_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_ready
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_din
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_nirq
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_dout
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_a
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_r_nw
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/audio_dout
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/jp_dout
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/sprdma_active
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/sprdma_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/sprdma_dout
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/sprdma_r_nw
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11631310 ns} 0}
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
WaveRestoreZoom {3439310 ns} {19823310 ns}
