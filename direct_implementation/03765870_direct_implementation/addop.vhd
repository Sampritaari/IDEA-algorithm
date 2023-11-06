----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:21:50 05/25/2023 
-- Design Name: 
-- Module Name:    addop - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity addop is
    Port ( Input1 : in  STD_LOGIC_VECTOR(15 downto 0);
           Input2 : in  STD_LOGIC_VECTOR(15 downto 0);
           Output : out  STD_LOGIC_VECTOR(15 downto 0));
end addop;

architecture Behavioral of addop is

--signal temp : STD_LOGIC_VECTOR (16 downto 0);

begin

	process (Input1, Input2)
   variable Input1_unsigned, Input2_unsigned, Output_unsigned: unsigned(15 downto 0); 
   begin
		Input1_unsigned := unsigned(Input1);
      Input2_unsigned := unsigned(Input2);
  
      Output_unsigned := Input1_unsigned + Input2_unsigned;
  
      Output <= std_logic_vector(Output_unsigned);
  end process;
	


end Behavioral;

