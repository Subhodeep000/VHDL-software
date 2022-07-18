library ieee;
use ieee.std_logic_1164.all;
entity parity is
      port( data:in bit_vector(7 downto 0);
                  even_p,odd_p: out bit);
end parity;
architecture parity_gen of parity is
signal temp : bit_vector(5 downto 0);
  begin
    temp(0)<=data(0) xor data(1);
    temp(1)<=temp(0) xor data(2);
    temp(2)<=temp(1) xor data(3);
    temp(3)<=temp(2) xor data(4);
    temp(4)<=temp(3) xor data(5);
    temp(5)<=temp(4) xor data(6);
    even_p <= temp(5) xor data(7);
    odd_p <= not(temp(5) xor data(7));
end parity_gen;