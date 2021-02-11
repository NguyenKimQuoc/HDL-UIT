transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/Mux21_1BIT.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/MCell.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/HAS.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/D_FlipFlop.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/Decoder.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/Counter_1BIT.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/Counter_NBIT.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/Ram.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Stack {D:/HDL/Stack/Stack.v}

