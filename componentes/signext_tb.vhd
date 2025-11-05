library IEEE; 
use IEEE.STD_LOGIC_1164.all;  

entity signext_tb is
end signext_tb;

architecture sim of signext_tb is 
-- importando componente
	component signext is
	  port(a: in  STD_LOGIC_VECTOR(15 downto 0);
			 y: out STD_LOGIC_VECTOR(31 downto 0));
	end component;

-- sinais que interagem com uut
	signal a: STD_LOGIC_VECTOR(15 downto 0);
	signal y: STD_LOGIC_VECTOR(31 downto 0);


begin 
-- conectando port map
	uut: signext port map(a => a, y => y);
	
	process begin
		--testando negativo
		a <= x"f000";
		wait for 10ns;
		
		--testando positivo
		a <= x"0004";
		wait for 10ns;
		
		--testando negativo
		a <= x"8000";
		wait for 10ns;
		
		--testando positivo
		a <= x"000a";
		wait for 40ns;
		wait;
	end process;

end sim;