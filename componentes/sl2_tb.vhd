library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity sl2_tb is
end sl2_tb;

architecture sim of sl2_tb is
	--componente
	component sl2 is
		port(a: in  STD_LOGIC_VECTOR(31 downto 0);
			y: out STD_LOGIC_VECTOR(31 downto 0));
	end component;

	--sinais
	signal a, y : std_logic_vector(31 downto 0);
	
begin 
	--instancia componente
	uut : sl2 port map(a=>a, y=>y);
	
	process begin
		a <= x"00000002";
		wait for 40ns;
		
		a <= x"00000001";
		wait for 40ns;
		
		wait;
	
	end process;

end sim;