library IEEE;
use IEEE.std_logic_1164.all;

entity adder_16bit is
    port ( a, b : in std_logic_vector(15 downto 0);
           sum1 : out std_logic_vector(15 downto 0));
end adder_16bit;

architecture arch of adder_16bit is
    component fullAdder is
        port ( a, b, c: in std_logic;
               sum, carry : out std_logic);
    end component;

    signal  carry1, carry2, carry3, carry4, carry5, carry6, carry7,carry8, carry9, carry10, carry11, carry12, carry13, carry14, carry15,carry0: std_logic;
    
begin

    Full0: fullAdder port map(a=>a(0), b=>b(0), c=>'0', sum=>sum1(0), carry=>carry1);
	 Full1: fullAdder port map(a=>a(1), b=>b(1), c=>carry1, sum=>sum1(1), carry=>carry2);
	 Full2: fullAdder port map(a=>a(2), b=>b(2), c=>carry2, sum=>sum1(2), carry=>carry3);
	 Full3: fullAdder port map(a=>a(3), b=>b(3), c=>carry3, sum=>sum1(3), carry=>carry4);
	 Full4: fullAdder port map(a=>a(4), b=>b(4), c=>carry4, sum=>sum1(4), carry=>carry5);
	 Full5: fullAdder port map(a=>a(5), b=>b(5), c=>carry5, sum=>sum1(5), carry=>carry6);
	 Full6: fullAdder port map(a=>a(6), b=>b(6), c=>carry6, sum=>sum1(6), carry=>carry7);
	 Full7: fullAdder port map(a=>a(7), b=>b(7), c=>carry7, sum=>sum1(7), carry=>carry8);
	 Full8: fullAdder port map(a=>a(8), b=>b(8), c=>carry8, sum=>sum1(8), carry=>carry9);
	 Full9: fullAdder port map(a=>a(9), b=>b(9), c=>carry9, sum=>sum1(9), carry=>carry10);
	 Full10: fullAdder port map(a=>a(10), b=>b(10), c=>carry10, sum=>sum1(10), carry=>carry11);
	 Full11: fullAdder port map(a=>a(11), b=>b(11), c=>carry11, sum=>sum1(11), carry=>carry12);
	 Full12: fullAdder port map(a=>a(12), b=>b(12), c=>carry12, sum=>sum1(12), carry=>carry13);
    Full13: fullAdder port map(a=>a(13), b=>b(13), c=>carry13, sum=>sum1(13), carry=>carry14);
	 Full14: fullAdder port map(a=>a(14), b=>b(14), c=>carry14, sum=>sum1(14), carry=>carry15);
	 Full15:	fullAdder port map(a=>a(15), b=>b(15), c=>carry15, sum=>sum1(15), carry=>carry0);
	 

end arch;