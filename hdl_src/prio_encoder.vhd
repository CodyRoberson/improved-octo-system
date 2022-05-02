library ieee;
use ieee.std_logic_1164.all;

entity prio_encoder is
    port(
        r : in std_logic_vector(4 downto 1);
        pcode : out std_logic_vector(2 downto 0)
    );
end prio_encoder;

architecture cond_arch of prio_encoder is
begin
    pcode <= "100" when (r(4) = '1') else
             "011" when (r(3) = '1') else
             "010" when (r(2) = '1') else
             "001" when (r(1) = '1') else
             "000";
end architecture cond_arch;
