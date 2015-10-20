onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider 6502
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/clk_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/rst_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/ready_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/nnmi_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/nres_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/nirq_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/d_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/d_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/a_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/r_nw_out
add wave -noupdate -divider ControlPath
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/control_path/rdy
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/clk_div
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/control_path/currentstate
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/uins
add wave -noupdate -format Literal /nes_top_tb/duv/rp2a03_blk/cpu_blk/control_path/decins
add wave -noupdate -divider DataPath
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/data_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/data_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/p_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/db
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/sb
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/s_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/pch_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/pcl_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/abh_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/abl_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/address
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/ai_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/bi_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/ac_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/x_q
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/rp2a03_blk/cpu_blk/data_path/y_q
add wave -noupdate -divider PalleteRAM
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/DUV/ppu_blk/vram_d_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/DUV/ppu_blk/ri_pram_wr
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/DUV/ppu_blk/vram_a_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/DUV/ppu_blk/palette_ram
add wave -noupdate -divider SpriteRAM
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/DUV/ppu_blk/ppu_spr_blk/oam_a_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/DUV/ppu_blk/ppu_spr_blk/oam_d_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/DUV/ppu_blk/ppu_spr_blk/oam_wr_in 
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/DUV/ppu_blk/ppu_spr_blk/m_oam
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10781 ns} 0}
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
WaveRestoreZoom {0 ns} {32 us}
