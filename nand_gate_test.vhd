library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate_tb is
end nand_gate_tb;

architecture behavior of nand_gate_tb is 

    signal a, b : std_logic := '0';
    signal y : std_logic;
	 
    component nand_gate is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               y : out STD_LOGIC);
    end component;
	 
begin
    uut: nand_gate port map (
        a => a,
        b => b,
        y => y
    );
	 
    stim_proc: process
	 
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;  
        a <= '0'; b <= '0'; -- test 0 NAND 0
        wait for 100 ns;
        a <= '1'; b <= '0'; -- test 1 NAND 0
        wait for 100 ns;
        a <= '0'; b <= '1'; -- test 0 NAND 1
        wait for 100 ns;
        a <= '1'; b <= '1'; -- test 1 NAND 1
        wait for 100 ns;
        wait;
		  
    end process;
	 
end behavior;
