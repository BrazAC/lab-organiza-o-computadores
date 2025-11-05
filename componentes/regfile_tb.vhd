library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity regfile_tb is
end regfile_tb;

architecture sim of regfile_tb is 
	--component
	component regfile is 
		port(clk:         in  STD_LOGIC;
			 we:           in  STD_LOGIC;
			 ra1, ra2, wa: in  STD_LOGIC_VECTOR(4 downto 0);   -- enderecos de leitura e gravação
			 wd:           in  STD_LOGIC_VECTOR(31 downto 0);  -- conteudo a ser gravado
			 rd1, rd2:      out STD_LOGIC_VECTOR(31 downto 0)); -- portas de leitura
	end component;

	--sinais
	signal clk, we : std_logic;
	signal rd1, rd2, wd : std_logic_vector(31 downto 0);
	signal ra1, ra2, wa : std_logic_vector(4 downto 0);
	
begin 
	--instanciando componente
	uut: regfile port map (clk=>clk, we=>we, ra1=>ra1, ra2=>ra2, wa=>wa, wd=>wd, rd1=>rd1, rd2=>rd2);
	
	--logica de teste
	--clock process
	process begin
		clk <= '0';
		wait for 20ns;
		clk <= '1';
		wait for 20ns;
	end process;
	
	--estimulos
	process begin
		--inicialização
		we <= '0';
		ra1 <= (others => '0');
		ra2 <= (others => '0');
		wa  <= (others => '0'); --endereco do dado a ser escrito
		wd  <= (others => '0'); --dado a ser escrito
		wait for 40ns;
		
		we <= '1';
		wa <= "00011"; --escrevendo no registrador 3
		wd <= x"0000000b";
		wait for 40ns;
		
		we <= '0';
		ra1 <= "00011"; --ler o que esta no registrador 3
		wait for 40ns;
		
		we <= '1';
		wa <= "00100";
		wd <= x"cccbbbaa";
		wait for 40ns;
		
		we <= '0';
		ra2 <= "00100";
		wait for 40ns;
		
		wa <= "00011";
		wd <= x"aaaaaaaa";
		wait for 40ns;
		
		ra2 <= "00011";
		wait for 40ns;
		
		wait;
		
		
	end process;
	

end sim;