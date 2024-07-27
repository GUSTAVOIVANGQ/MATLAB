onerror {resume}
quietly virtual signal -install /BCDJK_tb/DUT { (context /BCDJK_tb/DUT )&{ffjk_b0/clk_i , ffjk_b1/clk_i , ffjk_b2/clk_i , ffjk_b3/clk_i }} All_Clk
quietly WaveActivateNextPane {} 0
add wave -noupdate /BCDJK_tb/clk_i
add wave -noupdate /BCDJK_tb/rst_i
add wave -noupdate /BCDJK_tb/j_i
add wave -noupdate /BCDJK_tb/k_i
add wave -noupdate /BCDJK_tb/q_o
add wave -noupdate /BCDJK_tb/qn_o
add wave -noupdate -divider All_Clks
add wave -noupdate /BCDJK_tb/DUT/ffjk_b1/clk_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b2/clk_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b3/clk_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b0/clk_i
add wave -noupdate -divider B0
add wave -noupdate /BCDJK_tb/DUT/ffjk_b0/clk_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b0/rst_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b0/j_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b0/k_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b0/q_o
add wave -noupdate /BCDJK_tb/DUT/ffjk_b0/qn_o
add wave -noupdate -divider B1
add wave -noupdate /BCDJK_tb/DUT/ffjk_b1/clk_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b1/rst_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b1/j_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b1/k_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b1/q_o
add wave -noupdate /BCDJK_tb/DUT/ffjk_b1/qn_o
add wave -noupdate -divider B2
add wave -noupdate /BCDJK_tb/DUT/ffjk_b2/clk_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b2/rst_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b2/j_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b2/k_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b2/q_o
add wave -noupdate /BCDJK_tb/DUT/ffjk_b2/qn_o
add wave -noupdate -divider B3
add wave -noupdate /BCDJK_tb/DUT/ffjk_b3/clk_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b3/rst_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b3/j_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b3/k_i
add wave -noupdate /BCDJK_tb/DUT/ffjk_b3/q_o
add wave -noupdate /BCDJK_tb/DUT/ffjk_b3/qn_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {39 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
