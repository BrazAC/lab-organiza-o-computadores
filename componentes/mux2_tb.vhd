library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity mux2_tb is
end mux2_tb;

architecture sim of mux2_tb is
	-- Importar UUT
	component mux2 is 
	  port(d0, d1: in  STD_LOGIC_VECTOR(31 downto 0);
			 s:      in  STD_LOGIC;
			 y:      out STD_LOGIC_VECTOR(31 downto 0));
	end component;
	
	-- Criar os sinais
	signal d0, d1, ys : STD_LOGIC_VECTOR(31 downto 0);
	signal ss : STD_LOGIC;

begin
	--Port map
	UUT: mux2 port map(d0=>d0, d1=>d1, y=>ys, s=>ss);
	
	
	--Process para estimulos 
	process begin
		d0 <= x"00000001";
		d1 <= x"00000002";
		ss <= '0';
		wait for 10ns;
		
		
		ss <= '1';
	
		wait;
	end process;
end sim; 