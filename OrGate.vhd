--Librerias

library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity OrGate is

	Port (in1 : in STD_LOGIC;
			in2 : in STD_LOGIC;
			salida : out STD_LOGIC);
			
end entity;

architecture behavioral of OrGate is

	begin
	
		salida <= in1 or in2;
		
end architecture;

--Testbench
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OrGate_tb is
end entity;

architecture behavior of OrGate_tb is
    -- Component declaration
    component OrGate is
        Port (
            in1 : in STD_LOGIC;
            in2 : in STD_LOGIC;
            salida : out STD_LOGIC
        );
    end component;

    -- Signals declaration
    signal in1_tb, in2_tb, salida_tb : STD_LOGIC;

begin
    uut: OrGate port map (in1_tb, in2_tb, salida_tb);

    stim_proc: process
    begin
        in1_tb <= '0';
        in2_tb <= '0';
        wait for 10 ns;

        in1_tb <= '0';
        in2_tb <= '1';
        wait for 10 ns;
		
        in1_tb <= '1';
        in2_tb <= '0';
        wait for 10 ns;

        in1_tb <= '1';
        in2_tb <= '1';
        wait for 10 ns;
        wait;
    end process;
end behavior;
