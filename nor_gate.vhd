library IEEE;
use IEEE.std_logic_1164.all;
entity nor_gate is
    port(A: in std_logic;     
         B: in std_logic;     
         Y: out std_logic); 
end nor_gate;
architecture norLogic of nor_gate is
 begin
    Y <= not(A OR B);
end norLogic;