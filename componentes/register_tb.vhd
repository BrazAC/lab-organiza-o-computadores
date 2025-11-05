library IEEE; 
use IEEE.STD_LOGIC_1164.all;  

entity register_tb is
end register_tb;

architecture sim of register_tb is 

-- importando componente
component register32 is 
  port(clk, reset: in  STD_LOGIC;
       d:          in  STD_LOGIC_VECTOR(31 downto 0);
       q:          out STD_LOGIC_VECTOR(31 downto 0));
end component;


-- sinais que interagem com uut

signal d, q : std_logic_vector(31 downto 0);
signal clk, reset : std_logic;

constant PERIOD : time := 10ns; -- periodo do clock

begin 
-- conectando port map
uut : register32 port map(d=>d, q=>q, clk=>clk, reset=>reset);

-- clock process
process
begin

	clk <= '0';
	wait for PERIOD;
	
	clk <= '1';
	wait for PERIOD;
end process;
	
--estimulos
process
begin

	d <= x"0000abcd";
	wait for 20ns;
	
	d <= x"0000dcba";
	wait for 20ns;
	
	reset <= '1';
	wait for 20ns;
	
	d <= x"bbbbbbbb";
	wait for 20ns;
	
	reset <= '0';
	wait for 300ns;
	wait;
end process;
end sim;