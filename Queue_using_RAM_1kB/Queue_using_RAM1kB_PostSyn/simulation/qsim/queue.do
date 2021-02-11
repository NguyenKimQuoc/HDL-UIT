onerror {quit -f}
vlib work
vlog -work work queue.vo
vlog -work work queue.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.queue_vlg_vec_tst
vcd file -direction queue.msim.vcd
vcd add -internal queue_vlg_vec_tst/*
vcd add -internal queue_vlg_vec_tst/i1/*
add wave /*
run -all
