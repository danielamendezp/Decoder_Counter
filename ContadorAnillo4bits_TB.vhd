----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2022 17:30:50
-- Design Name: 
-- Module Name: ContadorAnillo4bits_TB - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ContadorAnillo4bits_TB is
--  Port ( );

end ContadorAnillo4bits_TB;

architecture Behavioral of ContadorAnillo4bits_TB is

signal clk, reset, ce : std_logic; --entradas
signal B : std_logic_vector ( 3 downto 0); --salida

begin

UUT: entity work.ContadorAnillo4bits 
    port map(
    CLK =>clk,
    RESET => reset,
    CE => ce,
    B => B
);
--constant period: time := 20ns;

process 

begin

clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
reset <= '0';--, '0' after 10ns;
ce <= '1';

clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
reset <= '0';--, '0' after 10ns;
ce <= '1';

end process;

end Behavioral;
