onerror {quit -f}
vlib work
vlog -work work Stack.vo
vlog -work work Stack.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Stack_vlg_vec_tst
vcd file -direction Stack.msim.vcd
vcd add -internal Stack_vlg_vec_tst/*
vcd add -internal Stack_vlg_vec_tst/i1/*
add wave /*
run -all
