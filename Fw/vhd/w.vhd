
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: w.vhd

--    Date: Tue Jan 16 18:48:00 2024

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-15PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY bit_register IS
    PORT (
	                 clk :    in std_logic ;
	               reset :    in std_logic ;
	             data_in :    in std_logic ;
	            data_out : inout std_logic
    );
END bit_register;

-- End of Test Bench Header

ARCHITECTURE DSMB of bit_register is

	signal jed_node1	: std_logic:='0' ; -- clk
	signal jed_node2	: std_logic:='0' ; -- reset
	signal jed_node3	: std_logic:='0' ; -- data_in
	signal jed_node4	: std_logic:='0' ;
	signal jed_node5	: std_logic:='0' ;
	signal jed_node6	: std_logic:='0' ;
	signal jed_node7	: std_logic:='0' ;
	signal jed_node8	: std_logic:='0' ;
	signal jed_node9	: std_logic:='0' ;
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node15	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node22	: std_logic:='0' ;
	signal jed_node23	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of clk:SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of reset:SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of data_in:SIGNAL is "0003";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of data_out:SIGNAL is "0014";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= clk ;
jed_node2 <= reset ;
jed_node3 <= data_in ;
Mcell_14:c22v10m
generic map(reg,
   ninv,
   xreg,
   	15 ns, --tpd
	15 ns, --tea
	15 ns, --ter
	8 ns, --tco
	10 ns, --ts
	0 ns, --th
	6 ns, --twh
	6 ns, --twl
	4 ns, --tcf
	15 ns, --taw
	10 ns, --tar
	20 ns, --tap
	10 ns  --tspr
)
port map(
     d=>jed_sum_14,
     clk=>jed_node1,
     oe=>jed_oept_14,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>data_out,
     fb=>jed_fb_14
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= (((not(jed_fb_14))) or
((jed_node3)));

jed_sum_25<= (((jed_node2)));

end DSMB;
