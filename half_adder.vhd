library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity half_adder is
   port(a,b:in bit; sum,carry:out bit); 
end half_adder; 
 
architecture data of half_adder is
begin
   sum<= a xor b;  
   carry <= a and b;  
end data;