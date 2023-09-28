library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dmux_tb is
end dmux_tb;

architecture behavior of dmux_tb is 
    signal d, s : std_logic := '0';
    signal y0, y1 : std_logic;
    component dmux is
        Port ( d : in STD_LOGIC;
               s : in STD_LOGIC;
               y0 : out STD_LOGIC;
               y1 : out STD_LOGIC);
    end component;
begin
    uut: dmux port map (
        d => d,
        s => s,
        y0 => y0,
        y1 => y1
    );
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;  
        d <= '0'; s <= '0'; -- test 0 DMUX 0
        wait for 100 ns;
        d <= '1'; s <= '0'; -- test 1 DMUX 0
        wait for 100 ns;
        d <= '0'; s <= '1'; -- test 0 DMUX 1
        wait for 100 ns;
        d <= '1'; s <= '1'; -- test 1 DMUX 1
        wait for 100 ns;
        wait;
    end process;
end behavior;
