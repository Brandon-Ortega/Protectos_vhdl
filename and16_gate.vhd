library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and16_gate is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           y : out STD_LOGIC_VECTOR (15 downto 0));
end and16_gate;

architecture Behavioral of and16_gate is
begin
    y <= a and b;
end Behavioral;
