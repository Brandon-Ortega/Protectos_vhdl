library IEEE;
use IEEE.std_logic_1164.all;

entity adder_16bit_tb is
end adder_16bit_tb;

architecture testbench of adder_16bit_tb is

    component adder_16bit is
        port (
            a, b : in std_logic_vector(15 downto 0);
            sum1 : out std_logic_vector(15 downto 0)
        );
    end component;
	 
    signal a_t : std_logic_vector(15 downto 0) := (others => '0');
    signal b_t : std_logic_vector(15 downto 0) := (others => '0');
    signal sum1_t : std_logic_vector(15 downto 0);

begin

    dut: adder_16bit port map (
        a => a_t,
        b => b_t,
        sum1 => sum1_t
    );

    stim_proc: process
    begin        
	 
        a_t <= "0000000000000000";
        b_t <= "0000000000000000";
        wait for 10 ns;
        
        assert sum1_t = "0000000000000000"
            report "Error: Unexpected sum value"
            severity error;
				
		  a_t <= "0000000000000001";
        b_t <= "0000000000000000";
        wait for 10 ns;
        
        assert sum1_t = "0000000000000001"
            report "Error: Unexpected sum value"
            severity error;	

		  a_t <= "0000000000000000";
        b_t <= "0000000000000001";
        wait for 10 ns;
        
        assert sum1_t = "0000000000000001"
            report "Error: Unexpected sum value"
            severity error;	
				
        a_t <= "1111111111111111";
        b_t <= "0000000000000000";
        wait for 10 ns;
        
        assert sum1_t = "1111111111111111"
            report "Error: Unexpected sum value"
            severity error;
				
        a_t <= "0000000000000000";
        b_t <= "1111111111111111";
        wait for 10 ns;
        
        assert sum1_t = "1111111111111111"
            report "Error: Unexpected sum value"
            severity error;
				
		  a_t <= "0000000000000001";
        b_t <= "0000000000000010";
        wait for 10 ns;
        
        assert sum1_t = "0000000000000011"
            report "Error: Unexpected sum value"
            severity error;
				
        a_t <= "0000000000000000";
        b_t <= "0000000000000000";
        wait for 10 ns;
        
        assert sum1_t = "0000000000000000"
            report "Error: Unexpected sum value"
            severity error;
				
        wait;
    end process;

end testbench;