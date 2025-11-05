library ieee;
use ieee.std_logic_1164.all;

entity data_mem_db is
end data_mem_db;

architecture sim of data_mem_db is
	--Importar UUT
	component data_mem is
	  port(clk, we: in std_logic;
				a, wd: in std_logic_vector(31 downto 0);
					rd: out std_logic_vector(31 downto 0));
	end component;
	
	-- Criar sinais
	signal a, wd, rd : std_logic_vector(31 downto 0);
	signal clk, we: std_logic;
begin
	UUT: data_mem port map(clk=>clk, we=>we, a=>a, wd=>wd, rd=>rd);
	
	-- Clock
	process begin
		clk <= '0';
		wait for 20ns;
		clk <= '1';
		wait for 20ns;
	end process;
	
	-- Estimulos
	process begin
		we <= '0';
	
		-- ver oq esta em 0
		a <= x"00000000";
		wait for 10ns;
		
		-- ver oq esta em 1
		a <= x"00000004";
		wait for 10ns;
		
		we <= '1';
		
		--gravar algo em 1
		a <= x"00000000";
		wd <= x"aaaaaaaa";
		wait for 10ns;
		
		--gravar algo em 2
		a <= x"00000004";
		wd <= x"bbbbbbbb";
		wait for 10ns;
		
		we <= '0';
		
		--gravar algo em 1
		a <= x"00000000";
		wd <= x"cccccccc";
		wait for 10ns;
		
		--gravar algo em 2
		a <= x"00000004";
		wd <= x"ffffffff";
		wait for 10ns;
		
		wait for 20ns;
		wait;
	end process;
end sim;