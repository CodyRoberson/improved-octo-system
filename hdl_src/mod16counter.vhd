----------------------------------------------------------------------------------
--  Sourced From Designers Guide to VHDL 2008, Peter J Ashenden, Jim Lewis
--  Modified to convert natural to std_logic
----------------------------------------------------------------------------------


library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.numeric_std.ALL;



entity mod16counter is
  Port ( clk : in std_logic; 
         count : out std_logic_vector(31 downto 0));
end mod16counter;

--architecture Behavioral of mod16counter is
--begin
--    incrementer : process is
--        variable countValue : natural := 0;
--    begin
--        count <= std_logic_vector(to_unsigned( countValue, 32));
        
--        incrLoop : loop
--            wait until (clk'event AND clk = '1');
--            countValue := (countValue + 1) mod 16;
--            count <= std_logic_vector(to_unsigned( countValue, 32));
--        end loop;
--    end process;


--end Behavioral;

architecture Behavioral of mod16counter is
begin
    incrementer : process(clk) is
        variable countValue : natural := 0;
    begin
        count <= std_logic_vector(to_unsigned( countValue, 32));
        if rising_edge(clk) then
            countValue := (countValue + 1) mod 16;
            count <= std_logic_vector(to_unsigned( countValue, 32));
        end if;
    end process;


end Behavioral;