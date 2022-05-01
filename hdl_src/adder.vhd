----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2022 11:04:29 AM
-- Design Name: 
-- Module Name: adder - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.all;

entity adder is
    port ( 
        a : in std_logic_vector(7 downto 0);
        b : in std_logic_vector(7 downto 0);
        y : out std_logic_vector(7 downto 0)
    );
end adder;
architecture Behavioral of adder is
begin
    y <= a + b;
end Behavioral;
