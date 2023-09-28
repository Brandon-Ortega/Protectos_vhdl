library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_tb is
end and_gate_tb;

architecture behavior of and_gate_tb is 

    signal a, b : std_logic := '0';
    signal y : std_logic;
	 
    component and_gate is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               y : out STD_LOGIC);
    end component;
	 
begin

    uut: and_gate port map (
        a => a,
        b => b,
        y => y
    );
	 
    stim_proc: process
	 
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;  
        a <= '0'; b <= '0'; -- test 0 AND 0
        wait for 100 ns;
        a <= '1'; b <= '0'; -- test 1 AND 0
        wait for 100 ns;
        a <= '0'; b <= '1'; -- test 0 AND 1
        wait for 100 ns;
        a <= '1'; b <= '1'; -- test 1 AND 1
        wait for 100 ns;
        wait;
		  
    end process;
end behavior;
