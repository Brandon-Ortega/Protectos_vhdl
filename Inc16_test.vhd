library IEEE;
use IEEE.std_logic_1164.all;

entity inc16_tb is
end inc16_tb;

architecture tb_arch of inc16_tb is
  component inc16
    port (
      in : in std_logic_vector(15 downto 0);
      out : out std_logic_vector(15 downto 0)
    );
  end component;

  signal in_tb, out_tb : std_logic_vector(15 downto 0);
begin
  uut: inc16 port map (in => in_tb, out => out_tb);

  stimulus: process
  begin
    in_tb <= "0000000000000000";
    wait for 10 ns;
    
    in_tb <= "0000000000000001";
    wait for 10 ns;
    
    in_tb <= "1111111111111110";
    wait for 10 ns;
    
    in_tb <= "1111111111111111";
    wait for 10 ns;
    
    wait;
  end process stimulus;
end tb_arch;
s