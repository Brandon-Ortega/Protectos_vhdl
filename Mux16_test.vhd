library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux16_tb is
end Mux16_tb;

architecture Behavioral of Mux16_tb is
    signal sel : STD_LOGIC := '0';
    signal in0, in1, o : STD_LOGIC_VECTOR (15 downto 0);
begin
    uut: entity work.Mux16
        port map (sel => sel, in0 => in0, in1 => in1, o => o);

    stimulus : process
    begin
        -- Test case 1
        in0 <= "0000000000000000";
        in1 <= "1111111111111111";
        sel <= '0';
        wait for 10 ns;

        -- Test case 2
        sel <= '1';
        wait for 10 ns;
    end process;
end Behavioral;
