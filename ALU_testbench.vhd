--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:40:37 07/10/2012
-- Design Name:   
-- Module Name:   C:/My_Designs/ECE281_Xilinx14/PRISM_test/ALU_testbench.vhd
-- Project Name:  PRISM_test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

 
ENTITY ALU_testbench IS
END ALU_testbench;
 
ARCHITECTURE behavior OF ALU_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         OpSel : IN  std_logic_vector(2 downto 0);
         Data : IN  std_logic_vector(3 downto 0);
         Accumulator : IN  std_logic_vector(3 downto 0);
         Result : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 --below statements initialize all vector values to '0'
   signal OpSelSig : std_logic_vector(2 downto 0) := (others => '0');
   signal DataSig : std_logic_vector(3 downto 0) := (others => '0');
   signal AccumulatorSig : std_logic_vector(3 downto 0) := (others => '0');
   signal ResultSig : std_logic_vector(3 downto 0);
 

BEGIN
 
   uut: ALU PORT MAP (
          OpSel => OpSelSig,
          Data => DataSig,
          Accumulator => AccumulatorSig,
          Result => ResultSig
        );

   stim_proc: process
	 
   begin		
      
		wait for 20 ns;
		--test the AND operation; Result should be "0000"
		OpSelSig <= "000";
		DataSig <= "0000";
		AccumulatorSig <= "0000";
		wait for 20 ns;
		--test AND operation: Result should be "0000"
		OpSelSig <= "000";
		DataSig <= "0001";
		AccumulatorSig <= "0010";
		wait for 20 ns;

		OpSelSig <= "001";
		DataSig <= "0001";
		AccumulatorSig <= "0011";
		wait for 20 ns;

		OpSelSig <= "001";
		DataSig <= "0010";
		AccumulatorSig <= "0100";
		wait for 20 ns;
	
		OpSelSig <= "001";
		DataSig <= "0010";
		AccumulatorSig <= "0101";
		wait for 20 ns;
		
		OpSelSig <= "010";
		DataSig <= "0011";
		AccumulatorSig <= "0110";
		wait for 20 ns;
		
		OpSelSig <= "010";
		DataSig <= "0011";
		AccumulatorSig <= "0111";
		wait for 20 ns;
		
		OpSelSig <= "010";
		DataSig <= "0100";
		AccumulatorSig <= "1000";
		wait for 20 ns;
		
		OpSelSig <= "011";
		DataSig <= "0100";
		AccumulatorSig <= "1001";
		wait for 20 ns;
		
		OpSelSig <= "011";
		DataSig <= "0101";
		AccumulatorSig <= "1010";
		wait for 20 ns;

		OpSelSig <= "011";
		DataSig <= "0101";
		AccumulatorSig <= "1011";
		wait for 20 ns;
		
		OpSelSig <= "100";
		DataSig <= "0110";
		AccumulatorSig <= "1100";
		wait for 20 ns;
		
		OpSelSig <= "100";
		DataSig <= "0110";
		AccumulatorSig <= "1101";
		wait for 20 ns;
		
		OpSelSig <= "100";
		DataSig <= "0111";
		AccumulatorSig <= "1110";
		wait for 20 ns;
		
		OpSelSig <= "101";
		DataSig <= "0111";
		AccumulatorSig <= "1111";
		wait for 20 ns;
		
		OpSelSig <= "101";
		DataSig <= "1000";
		AccumulatorSig <= "0000";
		wait for 20 ns;
		
		OpSelSig <= "101";
		DataSig <= "1000";
		AccumulatorSig <= "0001";
		wait for 20 ns;
		
		OpSelSig <= "110";
		DataSig <= "1001";
		AccumulatorSig <= "0010";
		wait for 20 ns;
		
		OpSelSig <= "110";
		DataSig <= "1001";
		AccumulatorSig <= "0011";
		wait for 20 ns;
		
		OpSelSig <= "110";
		DataSig <= "1010";
		AccumulatorSig <= "0100";
		wait for 20 ns;
		
		OpSelSig <= "111";
		DataSig <= "1010";
		AccumulatorSig <= "0101";
		wait for 20 ns;
		
		OpSelSig <= "111";
		DataSig <= "1011";
		AccumulatorSig <= "0110";
		wait for 20 ns;
		
		OpSelSig <= "111";
		DataSig <= "1011";
		AccumulatorSig <= "0111";
		wait for 20 ns;
		
		
      wait;
   end process;

END;
