--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:54:31 06/24/2023
-- Design Name:   
-- Module Name:   /home/ise/Desktop/IDEA/IDEA/tb_keygenerator.vhd
-- Project Name:  IDEA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: keygenerator
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_keygenerator IS
END tb_keygenerator;
 
ARCHITECTURE behavior OF tb_keygenerator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keygenerator
    PORT(
         KEY : in  STD_LOGIC_VECTOR(127 downto 0);
          KEY1 : out  STD_LOGIC_VECTOR(15 downto 0);
          KEY2 : out  STD_LOGIC_VECTOR(15 downto 0);
          KEY3 : out  STD_LOGIC_VECTOR(15 downto 0);
          KEY4 : out  STD_LOGIC_VECTOR(15 downto 0);
          KEY5 : out  STD_LOGIC_VECTOR(15 downto 0);
          KEY6 : out  STD_LOGIC_VECTOR(15 downto 0);
          ROUND : in  STD_LOGIC_VECTOR(3 downto 0));
        
    END COMPONENT;
    

   --Inputs
	signal KEY : std_logic_vector(127 downto 0) := (others => '0');
   signal ROUND : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal KEY1 : std_logic_vector(15 downto 0);
   signal KEY2 : std_logic_vector(15 downto 0);
   signal KEY3 : std_logic_vector(15 downto 0);
   signal KEY4 : std_logic_vector(15 downto 0);
   signal KEY5 : std_logic_vector(15 downto 0);
   signal KEY6 : std_logic_vector(15 downto 0);
   

 	
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keygenerator PORT MAP (
          KEY => KEY,
          KEY1 => KEY1,
          KEY2 => KEY2,
          KEY3 => KEY3,
          KEY4 => KEY4,
          KEY5 => KEY5,
          KEY6 => KEY6,
          ROUND => ROUND
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		ROUND <= "0000";
		KEY <= x"00010002000300040005000600070008";
      wait for 100 ns;	
		
		ROUND <= "0001";
      wait for 100 ns;	
		
		ROUND <= "0010";
      wait for 100 ns;	
		
		ROUND <= "0011";
      wait for 100 ns;
       
      ROUND <= "0100";
      wait for 100 ns;			
		
		ROUND <= "0101";
      wait for 100 ns;
		
		ROUND <= "0110";
      wait for 100 ns;
		
		ROUND <= "0111";
      wait for 100 ns;

		ROUND <= "1000";
      wait for 100 ns;		 
		
      

   end process stim_proc;

END;
