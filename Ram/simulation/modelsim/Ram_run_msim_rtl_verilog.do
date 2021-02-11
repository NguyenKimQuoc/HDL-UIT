transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/HDL/Ram {D:/HDL/Ram/D_FlipFlop.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Ram {D:/HDL/Ram/MCell.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Ram {D:/HDL/Ram/Decoder.v}
vlog -vlog01compat -work work +incdir+D:/HDL/Ram {D:/HDL/Ram/Ram.v}

