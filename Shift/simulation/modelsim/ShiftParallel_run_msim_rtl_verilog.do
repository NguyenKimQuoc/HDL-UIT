transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/HDL/Shift {D:/HDL/Shift/Mux21_1BIT.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Shift {D:/HDL/Shift/D_FlipFlop.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Shift {D:/HDL/Shift/Mux41_1BIT.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Shift {D:/HDL/Shift/ShiftParallel_1BIT.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Shift {D:/HDL/Shift/ShiftParallel_NBIT.v}

