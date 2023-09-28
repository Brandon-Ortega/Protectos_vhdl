library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux16 is

    Port ( sel : in STD_LOGIC;
           in0 : in STD_LOGIC_VECTOR (15 downto 0);
           in1 : in STD_LOGIC_VECTOR (15 downto 0);
           o : out STD_LOGIC_VECTOR (15 downto 0));
end Mux16;

architecture Behavioral of Mux16 is
begin

    o <= in0 when sel = '0' else in1;
	 
end Behavioral;
