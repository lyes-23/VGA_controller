transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/VHDL/VGA_controller/affiche_obj.vhd}

vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/VHDL/VGA_controller/simulation/modelsim/vga_controller.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  vga_controller_vhd_tst

add wave *
view structure
view signals
run -all
