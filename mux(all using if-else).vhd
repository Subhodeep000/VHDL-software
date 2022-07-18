library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux161 is
    Port ( x : in std_logic_vector(15 downto 0);
           s : in std_logic_vector(3 downto 0);
           y : out std_logic);
end mux161;

architecture mux of mux161 is

begin
    process(x,s)
    begin
    if(s="0000")then
    y<=x(0);
     elsif(s="0001")then
    y<=x(1);
      elsif(s="0010")then
    y<=x(2);
      elsif(s="0011")then
    y<=x(3);
      elsif(s="0100")then
    y<=x(4);
      elsif(s="0101")then
    y<=x(5);
   elsif(s="0110")then
    y<=x(6);
      elsif(s="0111")then
    y<=x(7);
      elsif(s="1000")then
    y<=x(8);
         elsif(s="1001")then
    y<=x(9);
       elsif(s="1010")then
    y<=x(10);
    elsif(s="1011")then
    y<=x(11);
    elsif(s="1100")then
    y<=x(12);
     elsif(s="1101")then
    y<=x(13);
   elsif(s="1110")then
          y<=x(14);
  else
  y<=x(15);
  end if ;
  end process ;
end mux; 
