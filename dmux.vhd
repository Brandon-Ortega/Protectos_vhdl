library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dmux is
    Port ( d : in STD_LOGIC;
           s : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC);
end dmux;

architecture Behavioral of dmux is
begin
    y0 <= d and not s;
    y1 <= d and s;
end Behavioral;
