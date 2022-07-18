library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Exercise is
port (  A : in std_logic_vector (3 downto 0);
        B : in std_logic_vector (3 downto 0);
        Ag : out std_logic;
        Bg : out std_logic;
        AeqB: out std_logic
       );   
end Exercise;

architecture Comparator of Exercise is

begin
    Ag <= '1'when (A>B) else '0'; 
    Bg <= '1' when (B>A) else '0';  --Problem: Here if i sumulate B="ZZZZ", Bg is 1, asi if B>A 
    AeqB<= '1' when (A=B) else '0'; 
end Comparator; 