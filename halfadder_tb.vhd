library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder_tb is
end halfadder_tb;

architecture testbench of halfadder_tb is

  component halfadder is
    port (
      a, b : in std_logic;
      sum, carry_out : out std_logic
    );
  end component;

  signal a : std_logic := '0';
  signal b : std_logic := '0';

  signal sum : std_logic;
  signal carry_out : std_logic;

begin

  uut: halfadder port map (
    a => a,
    b => b,
    sum => sum,
    carry_out => carry_out
  );

  stim_proc: process
  begin        

    a <= '0';
    b <= '0';
    
    wait for 10 ns;
   
    assert sum = '0' and carry_out = '0'
      report "Error: Unexpected output values"
      severity error;
    a <= '1';
    b <= '0';
    
    wait for 10 ns;

    assert sum = '1' and carry_out = '0'
      report "Error: Unexpected output values"
      severity error;		
		
    a <= '0';
    b <= '1';
    
    wait for 10 ns;

    assert sum = '1' and carry_out = '0'
      report "Error: Unexpected output values"
      severity error;
    a <= '0';
    b <= '0';
    
    wait for 10 ns;

    assert sum = '0' and carry_out = '0'
      report "Error: Unexpected output values"
      severity error;
		
    wait;
  end process;

end testbench;
