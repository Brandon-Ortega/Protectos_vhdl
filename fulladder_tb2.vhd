library ieee;
use ieee.std_logic_1164.all;

entity fulladder_tb2 is
end fulladder_tb2;

architecture testbench2 of fulladder_tb2 is
  component fulladder is
    port (
      a, b, c : in std_logic;
      sum, carry : out std_logic
    );
  end component;
  signal a : std_logic := '1';
  signal b : std_logic := '1';
  signal c : std_logic := '0';

  signal sum : std_logic;
  signal carry : std_logic;

begin
  uut: fulladder port map (
    a => a,
    b => b,
    c => c,
    sum => sum,
    carry => carry
  );
  stim_proc: process
  begin   
    a <= '0';
    b <= '0';
    c <= '0';
    
    wait for 10 ns;

    assert sum = '0' and carry = '0'
      report "Error: Unexpected output values"
      severity error;
  
    a <= '1';
    b <= '0';
    c <= '1';    
    wait for 10 ns;
    
    assert sum = '0' and carry = '1'
      report "Error: Unexpected output values"
      severity error;
    a <= '0';
    b <= '1';
    c <= '1';    
    wait for 10 ns;
    
    assert sum = '0' and carry = '1'
      report "Error: Unexpected output values"
      severity error;
    a <= '0';
    b <= '0';
    c <= '0';    
    wait for 10 ns;
    assert sum = '0' and carry = '0'
      report "Error: Unexpected output values"
      severity error;
		
    wait;
  end process;
end testbench2;
