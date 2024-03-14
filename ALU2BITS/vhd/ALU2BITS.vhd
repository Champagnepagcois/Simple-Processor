
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: ALU2BITS.vhd

--    Date: Sat Jan 13 22:11:58 2024

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-15PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY alu IS
    PORT (
	                   a :    in std_logic_vector (1 downto 0) ;
	                   b :    in std_logic_vector (1 downto 0) ;
	                  op :    in std_logic ;
	              result : inout std_logic_vector (1 downto 0) ;
	               carry : inout std_logic
    );
END alu;

-- End of Test Bench Header

ARCHITECTURE DSMB of alu is

	signal jed_node1	: std_logic:='0' ; -- op
	signal jed_node2	: std_logic:='0' ; -- b(1)
	signal jed_node3	: std_logic:='0' ; -- b(0)
	signal jed_node4	: std_logic:='0' ; -- a(1)
	signal jed_node5	: std_logic:='0' ; -- a(0)
	signal jed_node6	: std_logic:='0' ;
	signal jed_node7	: std_logic:='0' ;
	signal jed_node8	: std_logic:='0' ;
	signal jed_node9	: std_logic:='0' ;
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node14	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node23	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of op:SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of b(1):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of b(0):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of a(1):SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of a(0):SIGNAL is "0005";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL \MODULE_2:g1:a0:g0:g2:u0:gs:g1:us0\:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node14:SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of result(1):SIGNAL is "0015";

SIGNAL  jed_oept_16:std_logic:='0';
SIGNAL  jed_sum_16,jed_fb_16:std_logic:='0';
--Attribute PIN_NUMBERS of carry:SIGNAL is "0016";

SIGNAL  jed_oept_22:std_logic:='0';
SIGNAL  jed_sum_22,jed_fb_22:std_logic:='0';
--Attribute PIN_NUMBERS of result(0):SIGNAL is "0022";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL \MODULE_1:g1:a0:g0:g2:u0:ga:g1:ua0\:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node23:SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= op ;
jed_node2 <= b(1) ;
jed_node3 <= b(0) ;
jed_node4 <= a(1) ;
jed_node5 <= a(0) ;
Mcell_14:c22v10m
generic map(comb,
   ninv,
   xpin,
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
     y=>jed_node14,
     fb=>jed_fb_14
   );

Mcell_15:c22v10m
generic map(comb,
   ninv,
   xpin,
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
     d=>jed_sum_15,
     clk=>jed_node1,
     oe=>jed_oept_15,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>result(1),
     fb=>jed_fb_15
   );

Mcell_16:c22v10m
generic map(comb,
   ninv,
   xpin,
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
     d=>jed_sum_16,
     clk=>jed_node1,
     oe=>jed_oept_16,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>carry,
     fb=>jed_fb_16
   );

Mcell_22:c22v10m
generic map(comb,
   ninv,
   xpin,
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
     d=>jed_sum_22,
     clk=>jed_node1,
     oe=>jed_oept_22,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>result(0),
     fb=>jed_fb_22
   );

Mcell_23:c22v10m
generic map(comb,
   ninv,
   xpin,
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
     d=>jed_sum_23,
     clk=>jed_node1,
     oe=>jed_oept_23,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>jed_node23,
     fb=>jed_fb_23
   );

\MODULE_2:g1:a0:g0:g2:u0:gs:g1:us0\ <= jed_fb_14;
\MODULE_1:g1:a0:g0:g2:u0:ga:g1:ua0\ <= jed_fb_23;
jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= (((jed_node2) and (jed_node3) and not(jed_node5)) or
((jed_node3) and not(jed_node4) and not(jed_node5)) or
((jed_node2) and not(jed_node4)));

jed_oept_15<=(one);

jed_sum_15<= (((jed_node1) and (jed_node2) and (jed_node3) and (jed_node4)
 and not(jed_node5)) or
((jed_node1) and not(jed_node2) and (jed_node3) and not(jed_node4)
 and not(jed_node5)) or
(not(jed_node1) and (jed_node2) and (jed_node3) and (jed_node4)
 and (jed_node5)) or
(not(jed_node1) and not(jed_node2) and (jed_node3) and not(jed_node4)
 and (jed_node5)) or
((jed_node1) and (jed_node2) and not(jed_node4) and (jed_node5)
) or
((jed_node1) and not(jed_node2) and (jed_node4) and (jed_node5)
) or
(not(jed_node1) and (jed_node2) and not(jed_node4) and not(jed_node5)
) or
(not(jed_node1) and not(jed_node2) and (jed_node4) and not(jed_node5)
) or
((jed_node2) and not(jed_node3) and not(jed_node4)) or
(not(jed_node2) and not(jed_node3) and (jed_node4)));

jed_oept_16<=(one);

jed_sum_16<= (((jed_node1) and (jed_fb_14)) or
(not(jed_node1) and (jed_fb_23)));

jed_oept_22<=(one);

jed_sum_22<= (((jed_node3) and not(jed_node5)) or
(not(jed_node3) and (jed_node5)));

jed_oept_23<=(one);

jed_sum_23<= (((jed_node2) and (jed_node3) and (jed_node5)) or
((jed_node3) and (jed_node4) and (jed_node5)) or
((jed_node2) and (jed_node4)));

end DSMB;
