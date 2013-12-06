--  Entity Declaration

-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
PORT
(
  clk : IN STD_LOGIC;
  clk_dv : OUT STD_LOGIC
);
-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!

END freqdiv25milionow;


--  Architecture Body

ARCHITECTURE freqdiv25milionow_architecture OF freqdiv25milionow IS

BEGIN
freqdiv25milionow:
PROCESS (clk)
VARIABLE i: INTEGER range 0 to 25000000;
VARIABLE clk_dvn: INTEGER range 0 to 1;
BEGIN
IF clk'EVENT AND clk='1' THEN
i:=i+1;
IF i=25000000 THEN
IF clk_dvn=1 THEN
clk_dv<='0';
clk_dvn:=0;
ELSE
clk_dv<='1';
clk_dvn:=1;
END IF;
i:=0;
END IF;
END IF;


END PROCESS;
END freqdiv25milionow_architecture;