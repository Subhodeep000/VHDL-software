library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DEMUX_SOURCE is
    Port ( I,S : in  STD_LOGIC;
           O1, O2 : out  STD_LOGIC);
end DEMUX_SOURCE;

architecture dataflow of DEMUX_SOURCE is

begin

O1 <= I and (not S);
O2 <= I and S;

end dataflow;



library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity demux_1to4 is
 port(
 
 F : in STD_LOGIC;
 S0,S1: in STD_LOGIC;
 A,B,C,D: out STD_LOGIC
 );
end demux_1to4;
 
architecture bhv of demux_1to4 is
begin
process (F,S0,S1) is
begin
 if (S0 ='0' and S1 = '0') then
 A <= F;
 elsif (S0 ='1' and S1 = '0') then
 B <= F;
 elsif (S0 ='0' and S1 = '1') then
 C <= F;
 else
 D <= F;
 end if;
 
end process;
end bhv;





library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity dmux1 is
port(f:in std_logic;
s:in std_logic_vector(2 downto 0);
y:out std_logic_vector(7 downto 0));
end demux1;

architectural behavioral of dmux1 is
begin
y(0)<=f when s="000"else'0';
y(1)<=f when s="001"else'0';
y(2)<=f when s="010"else'0';
y(3)<=f when s="011"else'0';
y(4)<=f when s="100"else'0';
y(5)<=f when s="101"else'0';
y(6)<=f when s="110"else'0';
y(7)<=f when s="111"else'0';
end behavioral;





library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux16 is
    Port ( x : in std_logic;
           s : in std_logic_vector(3 downto 0);
           y : out std_logic_vector(15 downto 0));
end demux16;

architecture demux of demux16 is

begin
 process(x,s)
  begin
  case s is
  when "0000" =>
  y(0)<=x;
   when "0001" =>
  y(1)<=x;
    when "0010" =>
  y(2)<=x;
   when "0011" =>
  y(3)<=x;
  when "0100" =>
  y(4)<=x;
  when "0101" =>
  y(5)<=x;

 when "0110" =>
  y(6)<=x;
 when "0111" =>
  y(7)<=x;
 when "1000" =>
  y(8)<=x;
 when "1001" =>
  y(9)<=x;
 when "1010" =>
  y(10)<=x;
 when "1011" =>
  y(11)<=x;
 when "1100" =>
  y(12)<=x;
 when "1101" =>
  y(13)<=x;
 when "1110" =>
  y(14)<=x;
  when others=>
  y(15)<=x;
  end case;
  end process;
  end demux;
