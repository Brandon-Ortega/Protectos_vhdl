library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way_tb is
end Or8Way_tb;

architecture Behavioral of Or8Way_tb is

    signal in0, in1, in2, in3, in4, in5, in6, in7, outt : STD_LOGIC;
	 
begin

    uut: entity work.Or8Way
	 
        port map (in0 => in0, in1 => in1, in2 => in2, in3 => in3, in4 => in4, in5 => in5, in6 => in6, in7 => in7, outt => outt);

    stimulus : process
    begin
        -- Test case 1
        in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '0'; in4 <= '0'; in5 <= '0'; in6 <= '0'; in7 <= '0';
        wait for 10 ns;

        -- Test case 2
        in0 <= '1'; in1 <= '0'; in2 <= '0'; in3 <= '0'; in4 <= '0'; in5 <= '0'; in6 <= '0'; in7 <= '0';
        wait for 10 ns;
        
        -- Test case 3
        in0 <= '0'; in1 <= '1'; in2 <= '0'; in3 <= '0'; in4 <= '0'; in5 <= '0'; in6 <= '0'; in7 <= '0';
        wait for 10 ns;
        
        -- Test case 4
        in0 <= '0'; in1 <= '0'; in2 <= '1'; in3 <= '0'; in4 <= '0'; in5 <= '0'; in6 <= '0'; in7 <= '0';
        wait for 10 ns;
        
        -- Test case 5
        in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '1'; in4 <= '0'; in5 <= '0'; in6 <= '0'; in7 <= '0';
        wait for 10 ns;
        
        -- Test case 6
        in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '0'; in4 <= '1'; in5 <= '0'; in6 <= '0'; in7 <= '0';
        wait for 10 ns;
        
        -- Test case 7
        in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '0'; in4 <= '0'; in5 <= '1'; in6 <= '0'; in7 <= '0';
        wait for 10 ns;
        
        -- Test case 8
        in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '0'; in4 <= '0'; in5 <= '0'; in6 <= '1'; in7 <= '0';
        wait for 10 ns;
        
        -- Test case 9
        in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '0'; in4 <= '0'; in5 <= '0'; in6 <= '0'; in7 <= '1';
        wait for 10 ns;
		  
    end process;
end Behavioral;
