onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /TestBench/io
add wave -noupdate -radix unsigned /TestBench/reset_n
add wave -noupdate -radix unsigned /TestBench/en
add wave -noupdate -radix unsigned /TestBench/rw
add wave -noupdate -radix unsigned /TestBench/clk
add wave -noupdate -radix unsigned /TestBench/empty
add wave -noupdate -radix unsigned /TestBench/full
add wave -noupdate -radix unsigned /TestBench/rws
add wave -noupdate -radix unsigned /TestBench/bus
add wave -noupdate -radix unsigned /TestBench/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5496293 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {4965368 ps} {8068478 ps}
