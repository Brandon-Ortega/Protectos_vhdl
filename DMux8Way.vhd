library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux8Way is

    Port ( sel : in STD_LOGIC_VECTOR (2 downto 0);
           in0 : in STD_LOGIC;
           out0, out1, out2, out3, out4, out5, out6, out7 : out STD_LOGIC);
			  
end DMux8Way;

architecture Behavioral of DMux8Way is

begin
    out0 <= in0 when sel = "000" else '0';
    out1 <= in0 when sel = "001" else '0';
    out2 <= in0 when sel = "010" else '0';
    out3 <= in0 when sel = "011" else '0';
    out4 <= in0 when sel = "100" else '0';
    out5 <= in0 when sel = "101" else '0';
    out6 <= in0 when sel = "110" else '0';
    out7 <= in0 when sel = "111" else '0';
	 
end Behavioral;
