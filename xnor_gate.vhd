library IEEE;
use IEEE.std_logic_1164.all;
entity xnor_gate is
    port(A : in std_logic;     
         B : in std_logic;     
         Y : out std_logic); 
end xnor_gate;
architecture xnorLogic of xnor_gate i
 begin
    Y <= not(A xor B);
end xnorLogic;