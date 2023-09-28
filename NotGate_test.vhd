library	IEEE;
use IEEE.std_logic_1164.all;

entity NotGate_test is	
end entity;
	
architecture arch_test of NotGate_test is

	component NotGate
		port(
			x	:	in 	std_logic;
			f	:	out	std_logic
		);
	end component;
	
	signal x_test,  f_test	: std_logic := '0';
	
	begin
	
	dut1	: NotGate 
		port map (
			x => x_test,
			f => f_test
		);

	Stimulus	: process
	begin	  
	  report "Start of the test of NotGate"	  
		severity note;
		
		x_test <= '0'; 
		wait for 1 ns;
		assert f_test = '1'
		  report "Falla para x = 0"
		  severity failure;
		  
		x_test <= '1'; 
		wait for 10 ns;
		assert f_test = '0'
		  report "Falla para x = 1"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;
end architecture;
