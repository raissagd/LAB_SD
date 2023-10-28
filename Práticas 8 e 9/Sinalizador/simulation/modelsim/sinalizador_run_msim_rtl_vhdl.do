transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/dudah/OneDrive/Área de Trabalho/UFMG/Lab Sistemas Digitais/Pratica8e9/LAB_SD/Práticas 8 e 9/RegW/registrador.vhd}

vcom -93 -work work {C:/Users/dudah/OneDrive/Área de Trabalho/UFMG/Lab Sistemas Digitais/Pratica8e9/LAB_SD/Práticas 8 e 9/Sinalizador/../RegW/tb_registrador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_registrador

add wave *
view structure
view signals
run 100 ns
