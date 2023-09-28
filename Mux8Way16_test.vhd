library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way16_tb is
end Mux8Way16_tb;

architecture Behavioral of Mux8Way16_tb is

    signal sel : STD_LOGIC_VECTOR (2 downto 0);
    signal in0, in1, in2, in3, in4, in5, in6, in7, outt : STD_LOGIC_VECTOR (15 downto 0);
	 
begin

    uut: entity work.Mux8Way16
        port map (sel => sel, in0 => in0, in1 => in1, in2 => in2, in3 => in3, in4 => in4, in5 => in5, in6 => in6, in7 => in7, outt => outt);

    stimulus : process
    begin
	 
        -- Test case 1
        in0 <= "0000000000000000"; in1 <= "1111111111111111"; in2 <= "0000000000000000"; in3 <= "1111111111111111";
        in4 <= "0000000000000000"; in5 <= "1111111111111111"; in6 <= "0000000000000000"; in7 <= "1111111111111111";
        sel <= "000";
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
