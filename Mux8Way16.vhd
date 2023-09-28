library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way16 is

    Port ( sel : in STD_LOGIC_VECTOR (2 downto 0);
           in0, in1, in2, in3, in4, in5, in6, in7 : in STD_LOGIC_VECTOR (15 downto 0);
           outt : out STD_LOGIC_VECTOR (15 downto 0));
			  
end Mux8Way16;

architecture Behavioral of Mux8Way16 is
begin

    with sel select
        outt <= in0 when "000",
               in1 when "001",
               in2 when "010",
               in3 when "011",
               in4 when "100",
               in5 when "101",
               in6 when "110",
               in7 when others;
					
end Behavioral;
