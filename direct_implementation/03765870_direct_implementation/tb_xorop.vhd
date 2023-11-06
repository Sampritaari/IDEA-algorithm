--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:47:59 05/25/2023
-- Design Name:   
-- Module Name:   /home/ise/IDEA/IDEA/tb_xorop.vhd
-- Project Name:  IDEA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: xorop
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_xorop IS
END tb_xorop;
 
ARCHITECTURE behavior OF tb_xorop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xorop
    PORT(
         Input1 : IN  std_logic_vector(15 downto 0);
         Input2 : IN  std_logic_vector(15 downto 0);
         Output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input1 : std_logic_vector(15 downto 0);
   signal Input2 : std_logic_vector(15 downto 0);

 	--Outputs
   signal Output : std_logic_vector(15 downto 0);
   
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xorop PORT MAP (
          Input1 => Input1,
          Input2 => Input2,
          Output => Output
        );
 

   -- Stimulus process
   stim_proc: process
	begin		
		Input1 <= x"0000";
		Input2 <= x"0000";
      
		wait for 10 ns;

    -- Test case 2
		Input1 <= x"1234";
      Input2 <= x"5678";
      
		wait for 10 ns;
	  --Test case 3
	   Input1 <= x"1234";
      Input2 <= x"0000";
      wait for 10 ns;


      --wait;
      
	end process stim_proc;

END;
