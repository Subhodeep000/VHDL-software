Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity VHDL_Binary_Comparator is
  port (
      inp-A,inp-B   : in std_logic_vector(3 downto 0);
      greater, equal, smaller  : out std_logic
   );
end VHDL_Binary_Comparator ;
 
architecture bhv of VHDL_Binary_Comparator is
begin
greater <= '1' when (inp-A > inp-B)
else '0';
equal <= '1' when (inp-A = inp-B)
else '0';
smaller <= '1' when (inp-A < inp-B)
else '0';
end bhv;
