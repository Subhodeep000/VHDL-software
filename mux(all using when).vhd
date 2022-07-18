library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1_top is
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (3 downto 0);
           B   : in  STD_LOGIC_VECTOR (3 downto 0);
           X   : out STD_LOGIC_VECTOR (3 downto 0));
end mux_2to1_top;

architecture Behavioral of mux_2to1_top is
begin
    X <= A when (SEL = '1') else B;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_top is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);     -- select input
           A   : in  STD_LOGIC_VECTOR (3 downto 0);     -- inputs
           X   : out STD_LOGIC);                        -- output
end mux_4to1_top;

architecture Behavioral of mux_4to1_top is
begin
    X <= A(0) when (SEL = "00") else
         A(1) when (SEL = "01") else
         A(2) when (SEL = "10") else
         A(3) when (SEL = "11") else A(0);
end Behavioral;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY MUX8_1 IS
PORT ( SEL: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
 A,B,C,D,E,F,G,H :IN STD_LOGIC;
MUX_OUT: OUT STD_LOGIC );
END MUX8_1;
ARCHITECTURE BEHAVIORAL OF MUX8_1 IS
BEGIN
PROCESS (SEL,A,B,C,D,E,F,G,H)
BEGIN
CASE  SEL IS
WHEN "000" => MUX_OUT <= A;
WHEN "001" => MUX_OUT <= B;
WHEN "010" => MUX_OUT <= C;
WHEN "011" => MUX_OUT <= D;
WHEN "100" => MUX_OUT <= E;
WHEN "101" => MUX_OUT <= F;
WHEN "110" => MUX_OUT <= G;
WHEN "111" => MUX_OUT <= H;
WHEN OTHERS => NULL;
END CASE;
END PROCESS;
END BEHAVIORAL;


