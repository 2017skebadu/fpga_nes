onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider hci
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/clk
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/rst
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/rx
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/brk
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/cpu_din
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/cpu_dbgreg_in
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/ppu_vram_din
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/tx
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/active
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/cpu_r_nw
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/cpu_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/cpu_dout
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/cpu_dbgreg_sel
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/cpu_dbgreg_out
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/cpu_dbgreg_wr
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/ppu_vram_wr
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/ppu_vram_a
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/ppu_vram_dout
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/cart_cfg
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/cart_cfg_upd
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/q_state
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/d_state
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/q_decode_cnt
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/d_decode_cnt
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/q_execute_cnt
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/d_execute_cnt
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/q_addr
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/d_addr
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/q_err_code
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/d_err_code
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/q_cart_cfg
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/d_cart_cfg
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/q_cart_cfg_upd
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/d_cart_cfg_upd
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/q_tx_data
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/d_tx_data
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/q_wr_en
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/d_wr_en
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/rd_en
add wave -noupdate -format Literal -radix hexadecimal /nes_top_tb/duv/hci_blk/rd_data
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/rx_empty
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/tx_full
add wave -noupdate -format Logic -radix hexadecimal /nes_top_tb/duv/hci_blk/parity_err
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10245769 ns} 0}
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
WaveRestoreZoom {0 ns} {32768 us}
