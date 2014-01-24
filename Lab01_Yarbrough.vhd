----------------------------------------------------------------------------------
-- Company:         Capt Trimble, M6
-- Engineer:         C3C Brian Yarbrough
-- 
-- Create Date:    22:44:18 01/22/2014 
-- Design Name:         3 in 3 out
-- Module Name:    Lab1_Yarbrough - Behavioral 
-- Project Name:         Two's Compliment Converter
-- Target Devices: 
-- Tool versions: 
-- Description: Design a Two's Compliment Converter Circuit
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Yarbrough is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Yarbrough;

architecture Behavioral of Lab1_Yarbrough is
        signal A_NOT : std_logic;
        signal B_NOT : std_logic;
        signal C_NOT : std_logic;
        signal E : std_logic;
        signal F : std_logic;
        signal G : std_logic;
        signal H : std_logic;
        signal I : std_logic;
        signal J : std_logic;

begin
        A_NOT <= not A;
        B_NOT <= not B;
        C_NOT <= not C;
        E <= A and F;
        F <= B_NOT and C_NOT;
        G <= A_NOT and J;
        H <= B_NOT and C;
        I <= B and C_NOT;
        J <= B or C;
        
        X <= E or G;
        Y <= H or I;
        Z <= C;


end Behavioral;