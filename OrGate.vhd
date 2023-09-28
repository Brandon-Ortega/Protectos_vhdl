--Librerias

library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

--entidad

entity OrGate is

	Port (in1 : in STD_LOGIC;
			in2 : in STD_LOGIC;
			salida : out STD_LOGIC);
			
end entity;

--arquitectura	

architecture behavioral of OrGate is

	begin
	
		salida <= in1 or in2;
		
end architecture;