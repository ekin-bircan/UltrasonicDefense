# Clock signal
set_property PACKAGE_PIN W5 [get_ports top_clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports top_clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports top_clk]
 
## Switches
#set_property PACKAGE_PIN V17 [get_ports {sensitivity[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sensitivity[0]}]
#set_property PACKAGE_PIN V16 [get_ports {sensitivity[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sensitivity[1]}]
#set_property PACKAGE_PIN W16 [get_ports {sensitivity[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sensitivity[2]}]
#set_property PACKAGE_PIN W17 [get_ports {pos[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {pos[1]}]
#set_property PACKAGE_PIN W15 [get_ports {pos[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {pos[2]}]
#set_property PACKAGE_PIN V15 [get_ports {pos[3]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {pos[3]}]
#set_property PACKAGE_PIN W14 [get_ports {pos[4]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {pos[4]}]
#set_property PACKAGE_PIN W13 [get_ports {pos[5]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports[5]}]
#set_property PACKAGE_PIN V2 [get_ports {pos[6]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports[6]}]
#set_property PACKAGE_PIN T3 [get_ports {sw[9]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T2 [get_ports {sw[10]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
#set_property PACKAGE_PIN R3 [get_ports {sw[11]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
#set_property PACKAGE_PIN W2 [get_ports {sw[12]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
#set_property PACKAGE_PIN U1 [get_ports {sw[13]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
#set_property PACKAGE_PIN T1 [get_ports {sw[14]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[14]}]
#set_property PACKAGE_PIN R2 [get_ports stop]					
#	set_property IOSTANDARD LVCMOS33 [get_ports stop]
 
## LEDs
#set_property PACKAGE_PIN U16 [get_ports {led}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led}]
#set_property PACKAGE_PIN E19 [get_ports {led[1]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
#set_property PACKAGE_PIN U19 [get_ports {led[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
#set_property PACKAGE_PIN V19 [get_ports {led[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
#set_property PACKAGE_PIN W18 [get_ports {led[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
#set_property PACKAGE_PIN U15 [get_ports {led[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
#set_property PACKAGE_PIN U14 [get_ports {led[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
#set_property PACKAGE_PIN V14 [get_ports {led[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
#set_property PACKAGE_PIN V13 [get_ports {led[8]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
#set_property PACKAGE_PIN V3 [get_ports {led[9]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
#set_property PACKAGE_PIN W3 [get_ports {led[10]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
#set_property PACKAGE_PIN U3 [get_ports {led[11]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]
#set_property PACKAGE_PIN P3 [get_ports {led[12]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]
#set_property PACKAGE_PIN N3 [get_ports {led[13]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]
#set_property PACKAGE_PIN P1 [get_ports {led[14]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]
#set_property PACKAGE_PIN L1 [get_ports {led[15]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]
	
#7 segment display
#set_property PACKAGE_PIN W7 [get_ports {segments[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {segments[0]}]
#set_property PACKAGE_PIN W6 [get_ports {segments[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {segments[1]}]
#set_property PACKAGE_PIN U8 [get_ports {segments[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {segments[2]}]
#set_property PACKAGE_PIN V8 [get_ports {segments[3]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {segments[3]}]
#set_property PACKAGE_PIN U5 [get_ports {segments[4]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {segments[4]}]
#set_property PACKAGE_PIN V5 [get_ports {segments[5]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {segments[5]}]
#set_property PACKAGE_PIN U7 [get_ports {segments[6]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {segments[6]}]

#set_property PACKAGE_PIN V7 [get_ports dp]							
#	set_property IOSTANDARD LVCMOS33 [get_ports dp]

#set_property PACKAGE_PIN U2 [get_ports {seg_choose[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg_choose[0]}]
#set_property PACKAGE_PIN U4 [get_ports {seg_choose[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg_choose[1]}]
#set_property PACKAGE_PIN V4 [get_ports {seg_choose[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg_choose[2]}]
#set_property PACKAGE_PIN W4 [get_ports {seg_choose[3]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg_choose[3]}]

#Pmod Header JA
#Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {detect_pwm}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {detect_pwm}]
#Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {eliminate_pwm}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {eliminate_pwm}]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {target_lock}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {target_lock}]
##Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {hc_trig}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {hc_trig}]
##Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {hc_echo}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {hc_echo}]
##Sch name = JA8
#set_property PACKAGE_PIN K2 [get_ports {detected}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {detected}]
##Sch name = JA9
set_property PACKAGE_PIN H2 [get_ports {range_sel[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {range_sel[0]}]
##Sch name = JA10
set_property PACKAGE_PIN G3 [get_ports {range_sel[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {range_sel[1]}]



##Pmod Header JB
#Sch name = JB1
#set_property PACKAGE_PIN A14 [get_ports {trig}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {trig}]
##Sch name = JB2
#set_property PACKAGE_PIN A16 [get_ports {echo}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {echo}]
##Sch name = JB3
#set_property PACKAGE_PIN B15 [get_ports {JB[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[2]}]
##Sch name = JB4
#set_property PACKAGE_PIN B16 [get_ports {JB[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[3]}]
##Sch name = JB7
#set_property PACKAGE_PIN A15 [get_ports {JB[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[4]}]
##Sch name = JB8
#set_property PACKAGE_PIN A17 [get_ports {JB[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[5]}]
##Sch name = JB9
#set_property PACKAGE_PIN C15 [get_ports {JB[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[6]}]
##Sch name = JB10 
#set_property PACKAGE_PIN C16 [get_ports {JB[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[7]}]
 


##Pmod Header JC
##Sch name = JC1
#set_property PACKAGE_PIN K17 [get_ports {JC[0]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[0]}]
##Sch name = JC2
#set_property PACKAGE_PIN M18 [get_ports {JC[1]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[1]}]
##Sch name = JC3
#set_property PACKAGE_PIN N17 [get_ports {JC[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[2]}]
##Sch name = JC4
#set_property PACKAGE_PIN P18 [get_ports {JC[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[3]}]
##Sch name = JC7
#set_property PACKAGE_PIN L17 [get_ports {JC[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[4]}]
##Sch name = JC8
#set_property PACKAGE_PIN M19 [get_ports {JC[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[5]}]
##Sch name = JC9
#set_property PACKAGE_PIN P17 [get_ports {JC[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[6]}]
##Sch name = JC10
#set_property PACKAGE_PIN R18 [get_ports {JC[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[7]}]
