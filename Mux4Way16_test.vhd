library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4_16_tb is
end entity;

architecture Behavioral of Mux4_16_tb is
    -- Component declaration for the DUT (Design Under Test)
    component Mux4_16 is
        port (
            a0, a1, a2, a3 : in std_logic_vector(15 downto 0);
            sel0, sel1 : in std_logic;
            y : out std_logic_vector(15 downto 0)
        );
    end component;

    -- Signal declarations for the testbench
    signal a0, a1, a2, a3 : std_logic_vector(15 downto 0);
    signal sel0, sel1 : std_logic;
    signal y : std_logic_vector(15 downto 0);

begin
    -- Instantiate the DUT
    dut: Mux4_16 port map (
        a0 => a0,
        a1 => a1,
        a2 => a2,
        a3 => a3,
        sel0 => sel0,
        sel1 => sel1,
        y => y
    );

    -- Stimulus process
    stimulus: process
    begin
        -- Insert stimulus here

        -- Wait for 100 ns to allow the DUT to respond

        -- Insert assertions or checks here

        -- End the testbench simulation
        wait;
    end process;

end architecture;