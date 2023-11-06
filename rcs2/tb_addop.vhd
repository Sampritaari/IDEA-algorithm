--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:38:21 05/25/2023
-- Design Name:   
-- Module Name:   /home/ise/IDEA/IDEA/tb_addop.vhd
-- Project Name:  IDEA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: addop
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
use IEEE.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_addop IS
END tb_addop;
 
ARCHITECTURE behavior OF tb_addop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addop
    PORT(
         Input1 : IN  std_logic_vector(15 downto 0);
         Input2 : IN  std_logic_vector(15 downto 0);
         Output : OUT  std_logic_vector(15 downto 0)
         
        );
    END COMPONENT;
    

   --Inputs
   signal Input1 : std_logic_vector(15 downto 0) := (others => '0');
   signal Input2 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(15 downto 0);
   
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addop PORT MAP (
          Input1 => Input1,
          Input2 => Input2,
          Output => Output
          
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		--1
		Input1 <= x"0000";
		Input2 <= x"0000";
      --wait for 100 ns;
		--2
		Input1 <= x"7ce3";
		Input2 <= x"0000";
      --wait for 100 ns;
		--3
		Input1 <= x"7ce3";
		Input2 <= x"2db6";
      --wait for 100 ns;
		--4
		Input1 <= x"fce3";
		Input2 <= x"2db6";
      --wait for 100 ns;
		--5
		Input1 <= x"fce3";
		Input2 <= x"edb6";
      --wait for 100 ns;
		--6
		Input1 <= x"7ce3";
		Input2 <= x"edb6";
      --wait for 100 ns;

  

      --wait;
   end process stim_proc;

END;
