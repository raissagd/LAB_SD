transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Práticas 8 e 9/Reg_MA/mean_4_clocks.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Práticas 8 e 9/BCD_7seg/BCD_7seg.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Práticas 8 e 9/Comparador/comparador.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Práticas 8 e 9/Datapath/datapath.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Práticas 8 e 9/Controladora/controladora.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Práticas 8 e 9/RegW/registrador.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Práticas 8 e 9/Sinalizador/sinalizador.vhd}

vcom -93 -work work {C:/Users/Acer/Downloads/LAB SD/Práticas 8 e 9/Sinalizador/tb_sinalizador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_sinalizador

add wave *
view structure
view signals
run 40 ns
