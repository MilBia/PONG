----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:34:33 03/23/2017 
-- Design Name: 
-- Module Name:    MENU - Behavioral 
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

entity MENU is
    Port ( STER1 : in  STD_LOGIC_VECTOR (2 downto 0);
           ENTER : in  STD_LOGIC;
           ESC : in  STD_LOGIC;
			  Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Busy : in  STD_LOGIC;
           Char_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           Char_WE : out  STD_LOGIC;
           NewLine : out  STD_LOGIC;
           Goto00 : out  STD_LOGIC);
end MENU;

architecture Behavioral of MENU is
----OPERACJE PODSTAWOWE
--	q0 - new line x10(x8 je�li implementacja q1 o q2)
--	q1 - spacja x17
--	q2 - goto00
----MENU G��WNE
--	q3 - (17 spacji, opcjonalny "+" (00101011) je�li w�a�nie wybrane i " KONTYNUUJ" (00100000 01001011 01001111 01001110 01010100 01011001 01001110 01010101 01010101 01001010)), ca�o�� je�li gra ju� trwa (implementacja druga kolejno��)
--	q4 - new line 1x (implementacja druga kolejno��)
--	q5 - 17 spacji, opcjonalny "+" (00101011) je�li w�a�nie wybrane i " GRAJ" (00100000 01000111 01010010 01000001 01001010)
--	q6 - new line 1x
--	q7 - 17 spacji, opcjonalny "+" (00101011) je�li w�a�nie wybrane i " OPCJE" (00100000 01001111 01010000 01000011 01001010 01000101)
----OPCJE
--	q8 - 17 spacji, opcjonalny "+" (00101011) je�li w�a�nie wybrane i " WROC" (00100000 01010111 01010010 01001111 01000011)
--	q9 - new line 1x
--	q10 - 17 spacji, opcjonalny "+" (00101011) je�li w�a�nie wybrane i " P1 RGB" (RGD -> _ _ _ wype�nione 0/1) (00100000 01010000 00110001 00100000 00110001 00110000 00110000)
--	q11 - new line 1x
--	q12 - 17 spacji, opcjonalny "+" (00101011) je�li w�a�nie wybrane i " P2 RGB" (RGD -> _ _ _ wype�nione 0/1) (00100000 01010000 00110010 00100000 00110000 00110000 00110001)
--	zamiast q4,q6,q9,q11 sprzedkok na q0 przechodz�ce do nast�pnej linii, z niego na q1 dodaj�ce spacje, a nast�pnie w zale�no�ci od zmiennej index przechodz�ce do innych stan�w.
		
	
	type CounterState is (q0,q1,q2,q3,q4,q5,q6,q7,q8,q9, q10, q11, q12);
	signal CurrentCounterState : CounterState;--:= q0;
	signal Clk_Counter : STD_LOGIC_VECTOR(2 downto 0);-- := (others => '0');
	signal Char : STD_LOGIC_VECTOR (7 downto 0);
	signal men : STD_LOGIC;	-- 0 MENU START / 1 OPCJE
	signal set : STD_LOGIC_VECTOR(2 downto 0);--kt�ry wiersz w menu
	signal P1 : UNSIGNED (2 downto 0);--kolor gracza1
	signal P2 : UNSIGNED (2 downto 0);--kolor gracza2
   signal gramy : STD_LOGIC; -- 0 gra zatrzymana / 1 gra w toku
   signal index : integer range 0 to 25;
   signal indey : integer range 0 to 40;
	
begin

process(Busy,Clk, Reset)	
begin
	if(Reset = '1' and Busy = '0') then
		Clk_Counter <= (others => '0');
		CurrentCounterState <= q2;
		Char_DI <= X"30";
		Char_WE <= '0';
		men <= '0';
		set <= "001";
		Char <= "00100000";
		gramy <= '0';
		P1 <= "100";
		P2 <= "001";
      
	elsif(rising_edge(Clk)) then
		Clk_Counter <= std_logic_vector( unsigned(Clk_Counter) + 1 );
--------------------------------------
-------------WY�WIETLANIE-------------
--------------------------------------
		if(Clk_Counter = "010" and Busy = '0') then
			Clk_Counter <= (others => '0');
			
			case CurrentCounterState is
				when q0 => 
					index <= index + 1;
					if (index = 8 and ((gramy = '1' and men = '0') or men = '1')) or index = 10 or index = 12 then
						CurrentCounterState <= q1;
					end if;
				when q1 => 
					if indey < 17 then
						indey <= indey + 1;
					else
						if men = '0' then
							if index = 8 then
								CurrentCounterState <= q3;
							elsif index = 10 then
								CurrentCounterState <= q5;
							elsif index = 12 then
								CurrentCounterState <= q7;
							end if;
						else
							if index = 8 then
								CurrentCounterState <= q8;
							elsif index = 10 then
								CurrentCounterState <= q10;
							elsif index = 12 then
								CurrentCounterState <= q12;
							end if;
						end if;
					end if;
				when q2 =>
					index <= 0;
					indey <= 0;
					CurrentCounterState <= q0;
				when q3 => 
					if indey = 0 then
						CurrentCounterState <= q1;
					elsif indey = 17 then
						if set = "000" then
							char <= "00101011"; -- "+"
						else 
							char <= "00100000"; -- " "
						end if;
					elsif indey = 18 then
						char <= "00100000"; -- " "
					elsif indey = 19 then
						char <= "01001011"; -- "K"
					elsif indey = 20 then
						char <= "01001111"; -- "O"
					elsif indey = 21 then
						char <= "01001110"; -- "N"
					elsif indey = 22 then
						char <= "01010100"; -- "T"
					elsif indey = 23 then
						char <= "01011001"; -- "Y"
					elsif indey = 24 then
						char <= "01001110"; -- "N"
					elsif indey = 25 then
						char <= "01010101"; -- "U"
					elsif indey = 26 then
						char <= "01010101"; -- "U"
					elsif indey = 27 then
						char <= "01001010"; -- "J"
					elsif indey = 28 then
						CurrentCounterState <= q0;
						indey <= 0;
					end if;
					indey <= indey + 1;
				when q4 => 
					CurrentCounterState <= q0;
					--indey <= indey + 1;
				when q5 => 
					if indey = 0 then
						CurrentCounterState <= q1;
					elsif indey = 17 then
						if set = "001" then
							char <= "00101011"; -- "+"
						else 
							char <= "00100000"; -- " "
						end if;
					elsif indey = 18 then
						char <= "00100000"; -- " "
					elsif indey = 19 then
						char <= "01000111"; -- "G"
					elsif indey = 20 then
						char <= "01010010"; -- "R"
					elsif indey = 21 then
						char <= "01000001"; -- "A"
					elsif indey = 22 then
						char <= "01001010"; -- "J"
					elsif indey = 23 then
						CurrentCounterState <= q0;
						indey <= 0;
					end if;
					indey <= indey + 1;
				when q6 => 
					CurrentCounterState <= q0;
					--indey <= indey + 1;
				when q7 => 
					if indey = 0 then
						CurrentCounterState <= q1;
					elsif indey = 17 then
						if set = "011" then
							char <= "00101011"; -- "+"
						else 
							char <= "00100000"; -- " "
						end if;
					elsif indey = 18 then
						char <= "00100000"; -- " "
					elsif indey = 19 then
						char <= "01001111"; -- "O"
					elsif indey = 20 then
						char <= "01010000"; -- "P"
					elsif indey = 21 then
						char <= "01000011"; -- "C"
					elsif indey = 22 then
						char <= "01001010"; -- "J"
					elsif indey = 23 then
						char <= "01000101"; -- "E"
					elsif indey = 24 then
						CurrentCounterState <= q0;
						indey <= 0;
					end if;
					indey <= indey + 1;
				when q8 => 
					if indey = 0 then
						CurrentCounterState <= q1;
					elsif indey = 17 then
						if set = "000" then
							char <= "00101011"; -- "+"
						else 
							char <= "00100000"; -- " "
						end if;
					elsif indey = 18 then
						char <= "00100000"; -- " "
					elsif indey = 19 then
						char <= "01001011"; -- "W"
					elsif indey = 20 then
						char <= "01001111"; -- "R"
					elsif indey = 21 then
						char <= "01001110"; -- "O"
					elsif indey = 22 then
						char <= "01010100"; -- "C"
					elsif indey > 22 and indey < 28 then
						char <= "00100000"; -- " "
					elsif indey = 28 then
						CurrentCounterState <= q0;
						indey <= 0;
					end if;
					indey <= indey + 1;
				when q9 => 
					CurrentCounterState <= q0;
					--indey <= indey + 1;
				when q10 => 
					if indey = 0 then
						CurrentCounterState <= q1;
					elsif indey = 17 then
						if set = "001" then
							char <= "00101011"; -- "+"
						else 
							char <= "00100000"; -- " "
						end if;
					elsif indey = 18 then
						char <= "00100000"; -- " "
					elsif indey = 19 then
						char <= "01010000"; -- "P"
					elsif indey = 20 then
						char <= "00110001"; -- "1"
					elsif indey = 21 then
						char <= "01000001"; -- " "
					elsif indey = 22 then
						if P1(2) = '1' then
							char <= "00110001"; -- "1"
						else 
							char <= "00110000"; -- "0"
						end if;
					elsif indey = 23 then
						if P1(1) = '1' then
							char <= "00110001"; -- "1"
						else 
							char <= "00110000"; -- "0"
						end if;
					elsif indey = 24 then
						if P1(0) = '1' then
							char <= "00110001"; -- "1"
						else 
							char <= "00110000"; -- "0"
						end if;
					elsif indey = 25 then
						CurrentCounterState <= q0;
						indey <= 0;
					end if;
					indey <= indey + 1;
				when q11 => 
					CurrentCounterState <= q0;
					--indey <= indey + 1;
				when q12 => 
					if indey = 0 then
						CurrentCounterState <= q1;
					elsif indey = 17 then
						if set = "011" then
							char <= "00101011"; -- "+"
						else 
							char <= "00100000"; -- " "
						end if;
					elsif indey = 18 then
						char <= "00100000"; -- " "
					elsif indey = 19 then
						char <= "01010000"; -- "P"
					elsif indey = 20 then
						char <= "00110010"; -- "2"
					elsif indey = 21 then
						char <= "01000001"; -- " "
					elsif indey = 22 then
						if P2(2) = '1' then
							char <= "00110001"; -- "1"
						else 
							char <= "00110000"; -- "0"
						end if;
					elsif indey = 23 then
						if P2(1) = '1' then
							char <= "00110001"; -- "1"
						else 
							char <= "00110000"; -- "0"
						end if;
					elsif indey = 24 then
						if P2(0) = '1' then
							char <= "00110001"; -- "1"
						else 
							char <= "00110000"; -- "0"
						end if;
					elsif indey = 25 then
						CurrentCounterState <= q0;
						indey <= 0;
					end if;
					indey <= indey + 1;
			end case;
				
			case CurrentCounterState is
				when q0 => NewLine <= '1'; Char_WE <= '1'; -- new line
				when q1 => Char_DI <= "00100000"; Char_WE <= '1'; -- space
				when q2 => Goto00 <= '1'; Char_WE <= '1'; -- goto00
				when others => Char_DI <= Char ; Char_WE <= '1';
--				when q4 => Char_DI <= Char ; Char_WE <= '1';
--				when q5 => Char_DI <= Char ; Char_WE <= '1';
--				when q6 => Char_DI <= Char ; Char_WE <= '1';
--				when q7 => Char_DI <= Char ; Char_WE <= '1';
--				when q8 => Char_DI <= Char ; Char_WE <= '1';
--				when q9 => Char_DI <= Char ; Char_WE <= '1';
--				when q10 => Char_DI <= Char ; Char_WE <= '1';
--				when q11 => Char_DI <= Char ; Char_WE <= '1';
--				when q12 => Char_DI <= Char ; Char_WE <= '1';
			end case;
				
--------------------------------------
--------------STEROWANIE--------------
--------------------------------------					
		else
			Char_WE <= '0';
			NewLine <= '0';
			Goto00 <= '0';
			if men = '0' then
				if set = "000" then
					if STER1 = "001" then
						set <= "001";
					elsif ENTER = '1' then
						gramy <= '1';
					end if;
				elsif set = "001" then
					if STER1 = "000" then
						set <= "000";
					elsif STER1 = "001" then
						set <= "011";
					elsif ENTER = '1' then
						gramy <= '1';
					end if;
				else
					if STER1 = "000" then
						set <= "001";
					elsif ENTER = '1' then
						men <= '1';
					end if;
				end if;
			end if;
			if men = '1' then
				if set = "000" then
					if STER1 = "001" then
						set <= "001";
					elsif ENTER = '1' then
						men <= '0';
					end if;
				elsif set = "001" then
					if STER1 = "000" then
						set <= "000";
					elsif STER1 = "001" then
						set <= "011";
					elsif STER1 = "011" and P1 < "111" then
						P1 <= P1 + 1;
					elsif STER1 = "010" and P1 > "000" then
						P1 <= P1 - 1;
					end if;
				else
					if STER1 = "000" then
						set <= "001";
					elsif ENTER = '1' then
						men <= '1';
					elsif STER1 = "011" and P2 < "111" then
						P2 <= P2 + 1;
					elsif STER1 = "010" and P2 > "000" then
						P2 <= P2 - 1;
					end if;
				end if;
			end if;
		end if;
	end if;
end process;


end Behavioral;

