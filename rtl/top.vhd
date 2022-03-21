-- Template top-level class that simply connects a LED to a switch

library ieee;
use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;

entity top is
	generic (
		NUM_PORTS : positive := 4
	);
	port (
		sw  : in  std_logic_vector(NUM_PORTS-1 downto 0);
		led : out std_logic_vector(NUM_PORTS-1 downto 0)
	);
end top;

architecture structural of top is
begin
	led <= sw;
end structural;

