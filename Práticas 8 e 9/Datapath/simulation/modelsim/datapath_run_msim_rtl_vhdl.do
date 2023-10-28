transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Pr�ticas 8 e 9/Controladora/controladora.vhd}

vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Pr�ticas 8 e 9/Datapath/../Controladora/tb_controladora.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_controladora

add wave *
view structure
view signals
run 200 ns
