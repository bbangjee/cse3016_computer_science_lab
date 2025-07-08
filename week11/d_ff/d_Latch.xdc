set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports d]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports e]

set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports q]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports qb]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets q_OBUF]