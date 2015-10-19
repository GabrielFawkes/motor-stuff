library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test297 is 
	port(clk : in std_logic;
		  slow_clk : out std_logic
		  );
end test297;

architecture arc of test297 is 
signal count : integer := 0;
signal clk_sig : std_logic;
begin
	process(clk)
	begin 
		if rising_edge(clk) then 
			if count /= 32500 then 
				count <= count + 1;
			else 
				clk_sig <= not clk_sig;
				count <= 0;
			end if;
		end if;
	end process;

slow_clk <= clk_sig;
end arc;	
