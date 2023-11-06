-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- ComponeInstantiationnt Declaration
			COMPONENT idea
         PORT(
				KEY : IN  std_logic_vector(127 downto 0);
				X_1 : IN  std_logic_vector(15 downto 0);
				X_2 : IN  std_logic_vector(15 downto 0);
				X_3 : IN  std_logic_vector(15 downto 0);
				X_4 : IN  std_logic_vector(15 downto 0);
				Y_1 : OUT  std_logic_vector(15 downto 0);
				Y_2 : OUT  std_logic_vector(15 downto 0);
				Y_3 : OUT  std_logic_vector(15 downto 0);
				Y_4 : OUT  std_logic_vector(15 downto 0)
			  );
         END COMPONENT;
			--Inputs
			signal KEY : std_logic_vector(127 downto 0) := (others => '0');
			signal X_1 : std_logic_vector(15 downto 0) := (others => '0');
			signal X_2 : std_logic_vector(15 downto 0) := (others => '0');
			signal X_3 : std_logic_vector(15 downto 0) := (others => '0');
			signal X_4 : std_logic_vector(15 downto 0) := (others => '0');
			
						--Outputs
			signal Y_1 : std_logic_vector(15 downto 0);
			signal Y_2 : std_logic_vector(15 downto 0);
			signal Y_3 : std_logic_vector(15 downto 0);
			signal Y_4 : std_logic_vector(15 downto 0);
			-- No clocks detected in port list. Replace <clock> below with 
			-- appropriate port name 
		 
			constant period : time := 10 ns;
          

  BEGIN

  -- Component Instantiation
          uut: idea PORT MAP (
          KEY => KEY,
          X_1 => X_1,
          X_2 => X_2,
          X_3 => X_3,
          X_4 => X_4,
          Y_1 => Y_1,
          Y_2 => Y_2,
          Y_3 => Y_3,
          Y_4 => Y_4
        );



  --  Test Bench Statements
     tb : PROCESS
     BEGIN

      X_1 <= x"1111";
		X_2 <= x"2222";
		X_3 <= x"4444";
		X_4 <= x"8888";
		KEY <= x"00010002000300040005000600070008";
		wait for period/2;
		
		X_1 <= x"0000";
		X_2 <= x"0000";
		X_3 <= x"0000";
		X_4 <= x"0000";
		KEY <= x"00000000000000000000000000000000";
		wait for period/2;
		
     END PROCESS tb;
  --  End Test Bench 

  END;
