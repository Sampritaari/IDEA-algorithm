----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:00:49 05/28/2023 
-- Design Name: 
-- Module Name:    roundop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roundop is
    Port ( X1 : in  STD_LOGIC_VECTOR(15 downto 0);
           X2 : in  STD_LOGIC_VECTOR(15 downto 0);
           X3 : in  STD_LOGIC_VECTOR(15 downto 0);
           X4 : in  STD_LOGIC_VECTOR(15 downto 0);
           Z1 : in  STD_LOGIC_VECTOR(15 downto 0);
           Z2 : in  STD_LOGIC_VECTOR(15 downto 0);
           Z3 : in  STD_LOGIC_VECTOR(15 downto 0);
           Z4 : in  STD_LOGIC_VECTOR(15 downto 0);
           Z5 : in  STD_LOGIC_VECTOR(15 downto 0);
           Z6 : in  STD_LOGIC_VECTOR(15 downto 0);
           Y1 : out  STD_LOGIC_VECTOR(15 downto 0);
           Y2 : out  STD_LOGIC_VECTOR(15 downto 0);
           Y3 : out  STD_LOGIC_VECTOR(15 downto 0);
           Y4 : out  STD_LOGIC_VECTOR(15 downto 0));
end roundop;

architecture Behavioral of roundop is
COMPONENT mulop
    PORT(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

COMPONENT xorop
    PORT(
         Input1	 : in  std_logic_vector(15 downto 0);
         Input2 : in  std_logic_vector(15 downto 0);
         Output : out  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
COMPONENT addop
    PORT(
         Input1 : IN  std_logic_vector(15 downto 0);
         Input2 : IN  std_logic_vector(15 downto 0);
         Output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
signal N1, N2, N3, N4, N5, N6, N7, N8, N9, N10 : std_logic_vector(15 downto 0);
begin
	m1: mulop PORT MAP (
          I_1 => X1,
          I_2 => Z1,
          O_1 => N1--this is node 1
        );
	a1: addop PORT MAP (
          Input1 => X2,
          Input2 => Z2,
          Output => N2--this is node 2
        );
	a2: addop PORT MAP (
          Input1 => X3,
          Input2 => Z3,
          Output => N3--this is node 3
        );
	m2: mulop PORT MAP (
          I_1 => X4,
          I_2 => Z4,
          O_1 => N4--this is node 4
        );
	xor_1: xorop PORT MAP (
          Input1 => N1,
          Input2 => N3,
          Output => N5--this is node 5
        );
	xor_2: xorop PORT MAP (
          Input1 => N2,
          Input2 => N4,
          Output => N6--this is node 6
        );
	m3: mulop PORT MAP (
          I_1 => N5,
          I_2 => Z5,
          O_1 => N7--this is node 7
        );
	a3: addop PORT MAP (
          Input1 => N6,
          Input2 => N7,
          Output => N8--this is node 1
        );
	m4: mulop PORT MAP (
          I_1 => N8,
          I_2 => Z6,
          O_1 => N9--this is node 9
        );
	a4: addop PORT MAP (
          Input1 => N7,
          Input2 => N9,
          Output => N10--this is node 10
        );
	xor_3: xorop PORT MAP (
          Input1 => N1,
          Input2 => N9,
          Output => Y1--this is output 1
        );
	xor_4: xorop PORT MAP (
          Input1 => N3,
          Input2 => N9,
          Output => Y2--this is output 2
        );
	xor_5: xorop PORT MAP (
          Input1 => N2,
          Input2 => N10,
          Output => Y3--this is output 3
        );
		  
	xor_6: xorop PORT MAP (
          Input1 => N4,
          Input2 => N10,
          Output => Y4--this is output 4
        );



end Behavioral;

