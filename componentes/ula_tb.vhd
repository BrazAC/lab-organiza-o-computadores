library IEEE;
use IEEE.STD_LOGiC_1164.all;

entity ula_tb is
end ula_tb;

architecture sim of ula_tb is
--Importa o componente (UUT)
component ula is 
  port(a, b:       in  STD_LOGIC_VECTOR(31 downto 0);
       alucontrol: in  STD_LOGIC_VECTOR(2 downto 0);
       result:     buffer STD_LOGIC_VECTOR(31 downto 0);
       zero:       out STD_LOGIC);
end component;

--Sinais pra interagir com o (UUT)
signal a,b: STD_LOGIC_VECTOR(31 downto 0);
signal alucontrol: STD_LOGIC_VECTOR(2 downto 0);
signal result: STD_LOGIC_VECTOR(31 downto 0);
signal z: STD_LOGIC;

begin
	--Conectando os sinais com o componente em teste
	uut: ula port map (a=>a, b=>b, alucontrol => alucontrol, result => result, zero => z);
	
	--Gera estimulos para interagir com o UUT
	process begin
		--Testar soma
		alucontrol <= "010";
		a <= x"0000000F";
		b <= x"00000003";
		
		wait for 10ns;
		--Testar subtração
		alucontrol <= "110";
		a <= x"0000000F";
		b <= x"0000000F";
		
		wait for 10ns;
		--Testar and
		alucontrol <= "000";
		a <= x"00000003";
		b <= x"0000000F";
		
		wait; --pra o process só repetir uma vez
	end process;
end sim;
