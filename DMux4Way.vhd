library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux4Way is

    Port ( sel : in STD_LOGIC_VECTOR (1 downto 0);
           in0 : in STD_LOGIC;
           out0, out1, out2, out3 : out STD_LOGIC);
			  
end DMux4Way;

architecture Behavioral of DMux4Way is

begin

    out0 <= in0 when sel = "00" else '0';
    out1 <= in0 when sel = "01" else '0';
    out2 <= in0 when sel = "10" else '0';
    out3 <= in0 when sel = "11" else '0';
	 
end Behavioral;
