library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

entity rcadder_tb is
end rcadder_tb;

architecture sim of rcadder_tb is 
	
	--componente
	component rcadder is
	  port(a, b: in  STD_LOGIC_VECTOR(31 downto 0);
			 y:    out STD_LOGIC_VECTOR(31 downto 0));
	end component;
	
	--sinais
	signal a, b, y : std_logic_vector(31 downto 0);

	
begin 
	--instanciando componente
	uut: rcadder port map(a=>a, b=>b, y=>y);
	
	--teste
	process
	begin
	a <= x"00000001";
	b <= x"00000006";
	
	wait for 20ns;
	
	a <= x"00000003";
	b <= x"00000003";
	
	wait;
	end process;
end sim;