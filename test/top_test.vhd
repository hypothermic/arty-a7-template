-- Do you really need a test bench for this...

library ieee;
use ieee.std_logic_1164.all;

entity top_test is
end top_test;

architecture behavioral of top_test is
	constant NUM_PORTS : positive := 4;

	signal sw, led : std_logic_vector(NUM_PORTS-1 downto 0);
begin
	uut : entity work.top generic map (
		NUM_PORTS => NUM_PORTS
	) port map (
		sw => sw,
		led => led
	);
	
	tb : process
		constant period : time := 20 ns;
	begin
		sw <= "0000";
		wait for period;
		assert led = "0000"
		report "Test bench failed" severity error;

		sw <= "1111";
		wait for period;
		assert led = "1111"
		report "Test bench failed" severity error;
		
		wait;
	end process;
end behavioral;

