library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity ALU is
    Port (
        x      : in  STD_LOGIC_VECTOR(15 downto 0);
        y      : in  STD_LOGIC_VECTOR(15 downto 0);
        zx     : in  STD_LOGIC;
        nx     : in  STD_LOGIC;
        zy     : in  STD_LOGIC;
        ny     : in  STD_LOGIC;
        f      : in  STD_LOGIC;
        no     : in  STD_LOGIC;
        out    : out STD_LOGIC_VECTOR(15 downto 0);
        zr     : out STD_LOGIC;
        ng     : out STD_LOGIC
    );
end ALU;

architecture Behavioral of ALU is
		component Not16
			 Port (
				  in_  : in  STD_LOGIC_VECTOR(15 downto 0);
				  out_ : out STD_LOGIC_VECTOR(15 downto 0)
			 );
		end component;
		
		-- Componente para incremento (complemento a 2) de 16 bits
		component Inc16
			 Port (
				  in_  : in  STD_LOGIC_VECTOR(15 downto 0);
				  out_ : out STD_LOGIC_VECTOR(15 downto 0)
			 );
		end component;
		
		-- Componente para suma de 16 bits
		component Add16
			 Port (
				  a   : in  STD_LOGIC_VECTOR(15 downto 0);
				  b   : in  STD_LOGIC_VECTOR(15 downto 0);
				  out_ : out STD_LOGIC_VECTOR(15 downto 0)
			 );
		end component;
		
		-- Componente para multiplexor de 16 bits
		component Mux16
			 Port (
				  a   : in  STD_LOGIC_VECTOR(15 downto 0);
				  b   : in  STD_LOGIC_VECTOR(15 downto 0);
				  sel : in  STD_LOGIC;
				  out_ : out STD_LOGIC_VECTOR(15 downto 0)
			 );
		end component;
    signal notX, notY, comp2X, comp2Y, x1, y1, x2, y2, sumaX2Y2, andX2Y2, out1, notOut1 : STD_LOGIC_VECTOR(15 downto 0);
begin

    -- Realizar las operaciones en x
    notX_inst: Not16 port map (in => x, out_ => notX);
    comp2X_inst: Inc16 port map (in => notX, out_ => comp2X);
    zeroX_inst: Add16 port map (a => x, b => comp2X, out_ => x1);
    x1_inst: Mux16 port map (a => x, b => zeroX, sel => zx, out_ => x1);
    notX1_inst: Not16 port map (in => x1, out_ => notX1);
    x2_inst: Mux16 port map (a => x1, b => notX1, sel => nx, out_ => x2);

    -- Realizar las operaciones en y
    notY_inst: Not16 port map (in => y, out_ => notY);
    comp2Y_inst: Inc16 port map (in => notY, out_ => comp2Y);
    zeroY_inst: Add16 port map (a => y, b => comp2Y, out_ => y1);
    y1_inst: Mux16 port map (a => y, b => zeroY, sel => zy, out_ => y1);
    notY1_inst: Not16 port map (in => y1, out => notY1);
    y2_inst: Mux16 port map (a => y1, b => notY1, sel => ny, out_ => y2);

    -- Realizar operaciones en la ALU
    sumaX2Y2_inst: Add16 port map (a => x2, b => y2, out_ => sumaX2Y2);
    andX2Y2_inst: Add16 port map (a => x2, b => y2, out_ => andX2Y2);
    out1_inst: Mux16 port map (a => andX2Y2, b => sumaX2Y2, sel => f, out_ => out1);
    notOut1_inst: Not16 port map (in => out1, out_ => notOut1);

    -- Operación NOT en la salida
    out_ <= out1 when no = '0' else notOut1;

    -- Bandera ZR
    zr <= '1' when out1 = (others => '0') else '0';

    -- Bandera NG
    ng <= out1(15);
end Behavioral;