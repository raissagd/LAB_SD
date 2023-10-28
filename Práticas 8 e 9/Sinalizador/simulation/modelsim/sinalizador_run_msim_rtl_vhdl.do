transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/dudah/OneDrive/Área de Trabalho/UFMG/Lab Sistemas Digitais/Pratica8e9/LAB_SD/Práticas 8 e 9/Reg_MA/mean_4_clocks.vhd}

vcom -93 -work work {C:/Users/dudah/OneDrive/Área de Trabalho/UFMG/Lab Sistemas Digitais/Pratica8e9/LAB_SD/Práticas 8 e 9/Sinalizador/../Reg_MA/tb_mean_4_clocks.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_mean_4_clocks

add wave *
view structure
view signals
run 100 ns
