# TCL ModelSim compile script
# Pay atention on the compilation order!!! (Botton up)



# Sets the compiler
set compiler vlog
#set compiler vcom


# Creats the work library if it does not exist
if { ![file exist work] } {
	vlib work
	vmap work work
}

vcom ../src/P6502_pkg.vhd
vcom ../src/FlipFlopD_sr.vhd
vcom ../src/RegisterNbits.vhd
vcom ../src/ALU.vhd
vcom ../src/DataPath.vhd
vcom ../src/ControlPath.vhd
vcom ../src/cpu.vhd

#########################
### Source files list ###
#########################

# Source files listed in hierarchical order: botton -> top
set sourceFiles {
    ../src/apu.v
    ../src/apu_div.v
    ../src/apu_envelope_generator.v
    ../src/apu_frame_counter.v
    ../src/apu_length_counter.v
    ../src/apu_mixer.v
    ../src/apu_noise.v
    ../src/apu_pulse.v
    ../src/apu_triangle.v
    ../src/block_ram.v
    ../src/cart.v
    ../src/fifo.v
    ../src/hci.v
    ../src/jp.v
    ../src/ppu.v
    ../src/ppu_bg.v
    ../src/ppu_ri.v
    ../src/ppu_spr.v
    ../src/ppu_vga.v
    ../src/rp2a03.v
    ../src/sprdma.v
    ../src/uart.v
    ../src/uart_baud_clk.v
    ../src/uart_rx.v
    ../src/uart_tx.v
    ../src/vga_sync.v
    ../src/vram.v
    ../src/wram.v
    ../src/nes_top.v
}



set testBench nes_top_tb	



###################
### Compilation ###
###################

if { [llength $sourceFiles] > 0 } {
	
	foreach file $sourceFiles {
		if [ catch {$compiler $file} ] {
			puts "\n*** ERROR compiling file $file :( ***" 
			return;
		}
	}
}

vcom nes_top_tb.vhd

################################
### Lists the compiled files ###
################################

if { [llength $sourceFiles] > 0 } {
	
	puts "\n*** Compiled files:"  
	
	foreach file $sourceFiles {
		puts \t$file
	}
}


puts "\n*** Compilation OK ;) ***"

#vsim $testBench
#set StdArithNoWarnings 1

