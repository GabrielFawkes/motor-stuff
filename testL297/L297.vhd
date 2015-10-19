library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity L297 is 
	port(clk 	  : in  std_logic;
		  restn_in : in  std_logic;
--		  switch   : in  std_logic_vector(3 downto 0);
		  enable   : out std_logic;
		  clk_out  : out std_logic;
--		  dir		  : out std_logic;
		  control  : out std_logic
		  );
end L297;

architecture behave of L297 is 
signal count   : integer := 0;
signal clk_sig : std_logic := '0';

begin 
ctrl_sig : process(clk, restn_in)
	begin 
		if restn_in = '0' then 
			count <= 0;
		elsif rising_edge(clk) then
			if count /= 32500 then 
				count <= count + 1;
			else 
				clk_sig <= not clk_sig;
				count <= 0;
			end if; 
		end if; 
	end process; 

clk_out <= clk_sig; 
enable <= '1'; 
control <= '1';

end behave;