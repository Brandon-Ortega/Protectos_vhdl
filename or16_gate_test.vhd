library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or16_gate_tb is
end or16_gate_tb;

architecture behavior of or16_gate_tb is 

    signal a, b : std_logic_vector (15 downto 0) := (others => '0');
    signal y : std_logic_vector (15 downto 0);
	 
    component or16_gate is
	 
        Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
               b : in STD_LOGIC_VECTOR (15 downto 0);
               y : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
	 
begin

    uut: or16_gate port map (
        a => a,
        b => b,
        y => y
    );
	 
    stim_proc: process
	 
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;  
        a <= "0000000000000000"; b <= "0000000000000000"; -- test 0 OR 0
        wait for 100 ns;
        a <= "1111111111111111"; b <= "0000000000000000"; -- test 1 OR 0
        wait for 100 ns;
        a <= "0000000000000000"; b <= "1111111111111111"; -- test 0 OR 1
        wait for 100 ns;
        a <= "1111111111111111"; b <= "1111111111111111"; -- test 1 OR 1
        wait for 100 ns;
        wait;
		  
    end process;
end behavior;
