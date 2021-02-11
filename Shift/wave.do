onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SRwPLtest/clk
add wave -noupdate /SRwPLtest/din_left
add wave -noupdate /SRwPLtest/din_right
add wave -noupdate /SRwPLtest/S
add wave -noupdate /SRwPLtest/din
add wave -noupdate /SRwPLtest/qout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {176260 ps} 0}
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
WaveRestoreZoom {0 ps} {441 ns}
