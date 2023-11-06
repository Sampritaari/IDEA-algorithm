----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:23:25 05/28/2023 
-- Design Name: 
-- Module Name:    trafo - Behavioral 
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

entity trafo is
    Port ( X1 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           X2 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           X3 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           X4 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Z1 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Z2 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Z3 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Z4 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Y1 : out  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Y2 : out  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Y3 : out  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Y4 : out  STD_LOGIC_VECTOR(15 DOWNTO 0));
end trafo;

architecture Behavioral of trafo is
COMPONENT mulop
    PORT(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

COMPONENT addop
    PORT(
         Input1 : IN  std_logic_vector(15 downto 0);
         Input2 : IN  std_logic_vector(15 downto 0);
         OUtput : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

begin

	m1: mulop PORT MAP (
          I_1 => X1,
          I_2 => Z1,
          O_1 => Y1--this is output 1
        );
	
	a1: addop PORT MAP (
          Input1 => X3,
          Input2 => Z2,
          Output => Y2--this is output 2
        );
	a2: addop PORT MAP (
          Input1 => X2,
          Input2 => Z3,
          Output => Y3--this is output 3
        );
	m2: mulop PORT MAP (
          I_1 => X4,
          I_2 => Z4,
          O_1 => Y4--this is output 4
        );

end Behavioral;

