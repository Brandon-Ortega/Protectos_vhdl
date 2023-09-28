library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux4Way_tb is
end DMux4Way_tb;

architecture Behavioral of DMux4Way_tb is

    signal sel : STD_LOGIC_VECTOR (1 downto 0);
    signal in0, out0, out1, out2, out3 : STD_LOGIC;
	 
begin

    uut: entity work.DMux4Way
	 
        port map (sel => sel, in0 => in0, out0 => out0, out1 => out1, out2 => out2, out3 => out3);

    stimulus : process
	 
    begin
	 
        -- Test case 1
        in0 <= '1'; sel <= "00";
        wait for 10 ns;

        -- Test case 2
        sel <= "01";
        wait for 10 ns;
        
        -- Test case 3
        sel <= "10";
        wait for 10 ns;
        
        -- Test case 4
        sel <= "11";
        wait for 10 ns;
		  
    end process;
	 
end Behavioral;
