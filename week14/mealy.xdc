set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports rst]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports in]

set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports z]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports out[0]]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports out[1]]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports out[2]]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports out[3]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk_IBUF}]