library IEEE;
use IEEE.std_logic_1164.all;

entity inc16 is
  port (
    in : in std_logic_vector(15 downto 0);
    out : out std_logic_vector(15 downto 0)
  );
end inc16;

architecture dataflow of inc16 is
  component halfadder
    port (
      a, b : in std_logic;
      sum, carry_out : out std_logic
    );
  end component;

  signal carry : std_logic_vector(16 downto 0);
  
begin
  carry(0) <= '1';
  
  gen : for i in 0 to 15 generate
    ha : halfadder port map (a => in(i), b => carry(i), sum => out(i), carry_out => carry(i+1));
  end generate gen;
  
end dataflow;
