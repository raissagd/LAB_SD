transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Hermes/MRP/pratica 8/Tudo-20231027T235831Z-001/Tudo/Controladora/controladora.vhd}

vcom -93 -work work {C:/Hermes/MRP/pratica 8/Tudo-20231027T235831Z-001/Tudo/Datapath/../Controladora/tb_controladora.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_controladora

add wave *
view structure
view signals
run 1000 ns
