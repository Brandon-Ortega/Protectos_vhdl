library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder is
  port (
    a, b : in std_logic;
    sum, carry_out : out std_logic
  );
end halfadder;

architecture dataflow of halfadder is
begin
  sum <= a xor b;
  carry_out <= a and b;
end dataflow;