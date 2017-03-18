----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:31 01/05/2017 
-- Design Name: 
-- Module Name:    PS2_to_ASCII - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PS2_to_STER is
    Port ( D_in : in  STD_LOGIC_VECTOR (7 downto 0);
           E0 : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           RS2_Rdy : in  STD_LOGIC;
           Clr : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           P1 : out  STD_LOGIC_VECTOR (2 downto 0);
           P2 : out  STD_LOGIC_VECTOR (2 downto 0);
           ENTER : out  STD_LOGIC;
           ESC : out  STD_LOGIC);
end PS2_to_STER;

architecture Behavioral of PS2_to_STER is
--signal P1_D : STD_LOGIC_VECTOR (2 downto 0);
--signal P2_D : STD_LOGIC_VECTOR (2 downto 0);

begin

	process1: process(RS2_Rdy,Clr,Clk)
	begin
	if clr = '1' then -- jeœli restet to czyœæ wyjœcia
		ENTER <='0';
		ESC <='0';
		P1 <="111";
		P2 <="111";
		--P1_D <="111";
		--P2_D <="111";
	elsif rising_edge( Clk ) then -- dalsza czêœæ bêdzie odbywaæ siê synchronicznie
			if RS2_Rdy = '1' then -- jeœli przyszed³ sygna³ odbiory danych przystêpujemy do obs³ugi
				if E0 = '1' then	  --player1
					if F0 = '0' then --wciœniêty
						if D_in = "01110101" then
							P1 <= "000";
						elsif D_in = "01110010" then
							P1 <= "001";
						elsif D_in = "01101011" then
							P1 <= "011";
						elsif D_in = "01110100" then
							P1 <= "010";
						end if;
					else
						P1 <= "111";
					end if;
				else					  --player2
					if F0 = '0' then --wciœniêty
						if D_in = "00011101" then
							P2 <= "000";
						elsif D_in = "00011011" then
							P2 <= "001";
						elsif D_in = "00011100" then
							P2 <= "011";
						elsif D_in = "00100011" then
							P2 <= "010";
						end if;
					else
						P2 <= "111";
					end if;
				end if;
				if D_in = "01011010" then	  --ENTER
					if F0 = '0' then --wciœniêty
						ENTER <= '1';
					else
						ENTER <= '0';
					end if;
				end if;
				if D_in = "01110110" then	  --ESC
					if F0 = '0' then --wciœniêty
						ESC <= '1';
					else
						ESC <= '0';
					end if;
				end if;
			end if;
		end if;
	end process process1;
	
--		--Player1
--	with D_in select
--		P1_D <=
--			"000" when "01101001", --U ARROW
--			"001" when "01110010", --D ARROW
--			"011" when "01101011", --L ARROW
--			"010" when "01000111", --R ARROW
--			"111" when others; --* 
--		  
--		--Player2
--	with D_in select
--		P2_D <=
--			"000" when "00011101", --W
--			"001" when "00011011", --S
--			"011" when "00011100", --A
--			"010" when "00100011", --D
--			"111" when others; --*
			
end Behavioral;

