library IEEE;

use IEEE.STD_LOGIC_1164.all, IEEE.NUMERIC_STD. all;


entity ENCODER8 is

port (A: in std_logic_vector (7 downto 0);

Y: out std_logic_vector (2 downto 0));

end ENCODER8;


architecture ARCH of ENCODER8 is

begin

process (A)

begin

If (A = "00000001") then Y <= "000";

elsif (A = "00000010") then Y <= "001";

elsif (A = "00000100") then Y <= "010";

elsif (A = "00001000") then Y <= "011";

elsif (A = "00010000") then Y <= "100";

elsif (A = "00100000") then Y <= "101";

elsif (A = "01000000") then Y <= "110";

elsif (A = "10000000") then Y <= "111";

else Y <= "XXX";

end if ;

end process ;

end ARCH;