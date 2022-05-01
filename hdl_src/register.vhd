----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2022 11:40:56 AM
-- Design Name: 
-- Module Name: register - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg is
    Port ( 
        clk     : in std_logic;
        reset_n : in std_logic;
        d       : in std_logic_vector(7 downto 0);
        q       : out std_logic_vector(7 downto 0)
    );
end reg;

architecture Behavioral of reg is
    signal val : std_logic_vector(7 downto 0);
begin
    regProcess : process(clk, reset_n, val) is
    begin
        if (reset_n = '0') then
            val <= (others=>'0');
        elsif(rising_edge(clk)) then
            val <= d;
        end if;
    end process;

    q <= val;

end Behavioral;
