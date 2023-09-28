library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way is
    Port ( in0, in1, in2, in3, in4, in5, in6, in7 : in STD_LOGIC;
           outt : out STD_LOGIC);
end Or8Way;

architecture Behavioral of Or8Way is
begin
    outt <= in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7;
end Behavioral;
