library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
  port (
    a, b, c : in std_logic;
    sum, carry : out std_logic
  );
end fulladder;

architecture arch of fulladder is

  component halfadder
    port (
      a, b : in std_logic;
      sum, carry_out : out std_logic
    );
  end component;

  signal s1, c1, c2 : std_logic;
  
begin
  ha1: halfadder port map (a => a, b => b, sum => s1, carry_out=> c1);
  ha2: halfadder port map (a => s1, b => c, sum => sum, carry_out => c2);
  carry <= c1 or c2;
  
end arch;

