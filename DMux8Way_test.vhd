library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux8Way_tb is

end DMux8Way_tb;

architecture Behavioral of DMux8Way_tb is

    signal sel : STD_LOGIC_VECTOR (2 downto 0);
    signal in0, out0, out1, out2, out3, out4, out5, out6, out7 : STD_LOGIC;
	 
begin

    uut: entity work.DMux8Way
	 
        port map (sel => sel, in0 => in0, out0 => out0, out1 => out1, out2 => out2, out3 => out3, out4 => out4, out5 => out5, out6 => out6, out7 => out7);

    stimulus : process
    begin
        -- Test case 1
        in0 <= '1'; sel <= "000";
        wait for 10 ns;

        -- Test case 2
        sel <= "001";
        wait for 10 ns;
        
        -- Test case 3
        sel <= "010";
        wait for 10 ns;
        
        -- Test case 4
        sel <= "011";
        wait for 10 ns;
        
        -- Test case 5
        sel <= "100";
        wait for 10 ns;
        
        -- Test case 6
        sel <= "101";
        wait for 10 ns;
        
        -- Test case 7
        sel <= "110";
        wait for 10 ns;
        
        -- Test case 8
        sel <= "111";
        wait for 10 ns;
		  
    end process;
end Behavioral;
