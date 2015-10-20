onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider ppu
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/clk_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/rst_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_sel_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_ncs_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_r_nw_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_d_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/vram_d_in
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/hsync_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/vsync_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/r_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/g_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/b_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_d_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/nvbl_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/vram_a_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/vram_d_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/vram_wr_out
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/vga_sys_palette_idx
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/vga_nes_x
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/vga_nes_y
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/vga_nes_y_next
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/vga_pix_pulse
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/vga_vblank
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_vram_din
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_pram_din
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_ram_din
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_overflow
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_pri_col
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_vram_dout
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_vram_wr
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_pram_wr
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_fv
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_vt
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_v
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_fh
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_ht
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_h
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_s
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_inc_addr
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_inc_addr_amt
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_nvbl_en
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_vblank
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_bg_en
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_en
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_bg_ls_clip
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_ls_clip
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_h
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_pt_sel
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_upd_cntrs
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_ram_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_ram_dout
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/ri_spr_ram_wr
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/bg_vram_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/bg_palette_idx
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/spr_palette_idx
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/spr_primary
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/spr_priority
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/ppu_blk/spr_vram_a
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/spr_vram_req
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/q_pri_obj_col
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/d_pri_obj_col
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/spr_foreground
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/spr_trans
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/ppu_blk/bg_trans
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11629611 ns} 0}
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
WaveRestoreZoom {3437611 ns} {19821611 ns}
