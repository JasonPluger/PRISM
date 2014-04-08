-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : ALU
-- Author      : usafa
-- Company     : usafa
--
-------------------------------------------------------------------------------
--
-- File        : ALU.vhd
-- Generated   : Fri Mar 30 11:16:54 2007
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	 port(
		 OpSel : in STD_LOGIC_VECTOR(2 downto 0);--determines what opCode is executed.
		 Data : in STD_LOGIC_VECTOR(3 downto 0); --Data is whatever is in the databus.
		 Accumulator : in STD_LOGIC_VECTOR(3 downto 0);--Whatever is in the Accumulator data.
		 Result : out STD_LOGIC_VECTOR(3 downto 0)--the value obtained after the operation is executed.
	     );
end ALU;

--}} End of automatically maintained section

architecture ALU of ALU is	   

subtype slv is STD_LOGIC_VECTOR;

begin
	
-- fill in details to create Result as a function of Data and Accumulator, based on OpSel.
 -- e.g : Build a multiplexer choosing between the eight ALU operations.  Either use a case statement (and thus a process)
 --       or a conditional signal assignment statement ( x <= Y when <condition> else . . .)
 -- ALU Operations are defined as:
 -- OpSel : Function
--  0     : AND
--  1     : NEG (2s complement)
--  2     : NOT (invert)
--  3     : ROR
--  4     : OR
--  5     : IN
--  6     : ADD
--  7     : LD
aluswitch: process (Accumulator, Data, OpSel)
        begin
		-- enter your if/then/else or case statements here
		-- Accumulator 
		if OpSel="000" then -- coding for AND operation
			Result <= Data AND Accumulator; 
		elsif OpSel="001" then -- coding for NEG operation
			Result <= slv(signed(NOT Accumulator) + 1);
		elsif OpSel="010" then -- coding for NOT operation
			Result <= NOT Accumulator; 
		elsif OpSel="011" then -- coding for ROR operation
									-- it's a binary operator: i.e. takes an argument on the left and on the right.	
			Result <= slv(unsigned(Accumulator) ROR 1);
			--have to change Data to unsigned(cast it) then ROR then change back to STD_LOGIC_VECTOR
		elsif OpSel="100" then -- coding for OR operation
			Result <= Data OR Accumulator;
		elsif OpSel="101" then -- coding for IN operation
			--In the ALU, the IN operation grabs whatever is on the Databus, it does NOT 
			--determine WHERE the data on the databus comes from...that's the Controller's responsibility			
			Result <= Data;
		elsif OpSel="110" then -- coding for ADD operation
			Result <= slv(unsigned(Data) + unsigned(Accumulator));
		elsif OpSel="111" then -- coding for LDA operation
			--Same as IN operation, LDA(load accumulator) grabs whatever data is on the 
			--databus and stores it as the result, the ALU does NOT determine where that
			--data comes from, nor does it care.
			Result <= Data;
		end if;
		end process;

-- OR, enter your conditional signal statement here

end ALU;

