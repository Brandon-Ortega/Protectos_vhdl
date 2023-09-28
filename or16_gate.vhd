library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or16_gate is

    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           y : out STD_LOGIC_VECTOR (15 downto 0));
			  
end or16_gate;

architecture Behavioral of or16_gate is

begin
    y <= a or b;
	 
end Behavioral;
