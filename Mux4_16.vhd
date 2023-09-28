library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4_16 is
	port(
		a0, a1, a2, a3 : in std_logic_vector(15 downto 0);
		sel0, sel1 : in std_logic;
		y : out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux4_16 is
	signal x1 : std_logic_vector(15 downto 0);

begin

   x1 <= a0 when (sel0='0' and sel1='0') else
         a1 when (sel0='0' and sel1='1') else
			a2 when (sel0='1' and sel1='0') else
			a3 when (sel0='1' and sel1='1');
	y<=x1;
end architecture;