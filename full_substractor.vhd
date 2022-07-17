library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity full_substractor is
   port(a,b,c: in bit; sub, borrow:out bit); 
end full_substractor; 
 
architecture data of full_substractor is
begin
   sub<= a xor b xor c; 
   borrow <= ((b xor c) and (not a)) or (b and c); 
end data; 