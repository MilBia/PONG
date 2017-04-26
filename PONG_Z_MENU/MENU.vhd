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
           Finish : in  STD_LOGIC;
           Char_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           Char_WE : out  STD_LOGIC;
           NewLine : out  STD_LOGIC;
           Goto00 : out  STD_LOGIC;
           Play : out  STD_LOGIC;
           Pouse : out  STD_LOGIC;
           Restart : out  STD_LOGIC;
			  P1_RGB : out  STD_LOGIC_VECTOR (2 downto 0);
			  P2_RGB : out  STD_LOGIC_VECTOR (2 downto 0));
end MENU;

architecture Behavioral of MENU is
----OPERACJE PODSTAWOWE
--	q0 - new line x10(x8 jeœli implementacja q1 o q2)
--	q1 - spacja x17
--	q2 - goto00
----MENU G£ÓWNE
--	q3 - (17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " KONTYNUUJ" (00100000 01001011 01001111 01001110 01010100 01011001 01001110 01010101 01010101 01001010)), ca³oœæ jeœli gra ju¿ trwa (implementacja druga kolejnoœæ)
--	q0 - new line 1x (implementacja druga kolejnoœæ)
--	q5 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " GRAJ" (00100000 01000111 01010010 01000001 01001010)
--	q0 - new line 1x
--	q7 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " OPCJE" (00100000 01001111 01010000 01000011 01001010 01000101)
----OPCJE
--	q8 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " WROC" (00100000 01010111 01010010 01001111 01000011)
--	q0 - new line 1x
--	q10 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " P1 RGB" (RGD -> _ _ _ wype³nione 0/1) (00100000 01010000 00110001 00100000 00110001 00110000 00110000)
--	q0 - new line 1x
--	q12 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " P2 RGB" (RGD -> _ _ _ wype³nione 0/1) (00100000 01010000 00110010 00100000 00110000 00110000 00110001)
--	q666 - czekanie
--	zamiast q4,q6,q9,q11 sprzedkok na q0 przechodz¹ce do nastêpnej linii, z niego na q1 dodaj¹ce spacje, a nastêpnie w zale¿noœci od zmiennej index przechodz¹ce do innych stanów.
		
	
	type CounterState is (q0,q1,q2,q3,q5,q7,q8,q10,q12,q666);
	signal CurrentCounterState : CounterState;--:= q0;
	signal Clk_Counter : STD_LOGIC_VECTOR(2 downto 0);-- := (others => '0');
	signal Char : STD_LOGIC_VECTOR (7 downto 0);
	signal men : STD_LOGIC;	-- 0 MENU START / 1 OPCJE
	signal set : STD_LOGIC_VECTOR(2 downto 0);--który wiersz w menu
	signal STER_IN : STD_LOGIC_VECTOR(2 downto 0);--który wiersz w menu
   signal pom : STD_LOGIC; -- nie wiêcej ni¿ jedne ENTER na raz
   signal P1 : UNSIGNED (2 downto 0);--kolor gracza1
	signal P2 : UNSIGNED (2 downto 0);--kolor gracza2
   signal gramy : STD_LOGIC; -- 0 nie gramy / 1 w³¹cza grê
   signal pauza : STD_LOGIC; -- 0 gra trwa / 1 pazua gry
   signal index : integer range 0 to 25;
   signal indey : integer range 0 to 40;
	signal restart_game : STD_LOGIC;	-- 0 notting / 1 restart_game
	signal restart_tepm : UNSIGNED (1 downto 0);
	
begin

process(Busy, Clk, Reset, Finish)	
begin
	if(Reset = '1' and Busy = '0') then
		Clk_Counter <= (others => '0');
		CurrentCounterState <= q0;
		Char_DI <= X"30";
		Char_WE <= '0';
      index <= 0;
      indey <= 0;
		men <= '0';
		set <= "001";
		STER_IN <= "111";
		Char <= "00100000";
		gramy <= '0';
		P1 <= "100";
		P2 <= "001";
      pom <= '0';
      pauza <= '0';
      restart_game <= '0';
      restart_tepm <= "00";
      
	elsif(rising_edge(Clk)) then
		Clk_Counter <= std_logic_vector( unsigned(Clk_Counter) + 1 );
         
         if restart_game = '1' and restart_tepm < "11" then
            gramy <= '1';
            pauza <= '0';
            restart_tepm <= restart_tepm + 1;
         elsif restart_tepm = "11" then
            restart_game <= '0';
         end if;
--------------------------------------
--------------STEROWANIE--------------
--------------------------------------					
		
			Char_WE <= '0';
			NewLine <= '0';
			Goto00 <= '0';
         --MENU START
			if men = '0' and (STER_IN /= STER1 or pom /= ENTER) then
            STER_IN <= STER1;
            pom <= ENTER;
				if set = "000" then
					if STER1 = "001" then
						set <= "001";
					elsif ENTER = '1' then
						pauza <= '0';
					end if;
				elsif set = "001" then
					if STER1 = "000" and gramy = '1' then
						set <= "000";
					elsif STER1 = "001" then
						set <= "011";
					elsif ENTER = '1' then
                  restart_game <='1';
                  restart_tepm <= "00";
						--gramy <= '1';
						--pauza <= '0';
					end if;
				else
					if STER1 = "000" then
						set <= "001";
					elsif ENTER = '1' then
						men <= '1';
					end if;
				end if;
			end if;
         --MENU OPCJE
			if men = '1' and (STER_IN /= STER1 or pom /= ENTER) then
            STER_IN <= STER1;
            pom <= ENTER;
				if set = "000" then
					if STER1 = "001" then
						set <= "001";
					elsif ENTER = '1' then
						men <= '0';
                  if gramy = '0' then
                     set <= "001";
                  end if;
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
         if ESC = '1' then
            pauza <= '1';
         end if;
			if Finish = '1' then
				set <= "001";
				pauza <= '0';
				gramy <= '0';
			end if;
--------------------------------------
-------------WYŒWIETLANIE-------------
--------------------------------------
		if(Clk_Counter = "010" and Busy = '0') then
			Clk_Counter <= (others => '0');
            case CurrentCounterState is
               when q0 => 
                  Char <= "00100000"; --" "
                  if index = 8 or index = 10 or index = 12 then
                     CurrentCounterState <= q1;
                     indey <= 0;
                  else
                     index <= index + 1;
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
                  CurrentCounterState <= q0;
               when q3 => 
                  if gramy = '1' then
                     if indey = 17 then
                        if set = "000" then
                           Char <= "00101011"; -- "+"
                        else 
                           Char <= "00100000"; -- " "
                        end if;
                     elsif indey = 18 then
                        Char <= "00100000"; -- " "
                     elsif indey = 19 then
                        Char <= "01001011"; -- "K"
                     elsif indey = 20 then
                        Char <= "01001111"; -- "O"
                     elsif indey = 21 then
                        Char <= "01001110"; -- "N"
                     elsif indey = 22 then
                        Char <= "01010100"; -- "T"
                     elsif indey = 23 then
                        Char <= "01011001"; -- "Y"
                     elsif indey = 24 then
                        Char <= "01001110"; -- "N"
                     elsif indey = 25 then
                        Char <= "01010101"; -- "U"
                     elsif indey = 26 then
                        Char <= "01010101"; -- "U"
                     elsif indey = 27 then
                        Char <= "01001010"; -- "J"
                     elsif indey = 28 then
                        index <= index + 1;
                        CurrentCounterState <= q0;
                     end if;
                  else 
                     if indey < 28 then
                        Char <= "00100000"; -- " "
                     elsif indey = 28 then
                        index <= index + 1;
                        CurrentCounterState <= q0;
                     end if;
                  end if;
                  indey <= indey + 1;
               when q5 => 
                  if indey = 17 then
                     if set = "001" then
                        Char <= "00101011"; -- "+"
                     else 
                        Char <= "00100000"; -- " "
                     end if;
                  elsif indey = 18 then
                     Char <= "00100000"; -- " "
                  elsif indey = 19 then
                     Char <= "01000111"; -- "G"
                  elsif indey = 20 then
                     Char <= "01010010"; -- "R"
                  elsif indey = 21 then
                     Char <= "01000001"; -- "A"
                  elsif indey = 22 then
                     Char <= "01001010"; -- "J"
                  elsif indey > 22 and indey < 26 then
                     Char <= "00100000"; -- " "
                  elsif indey = 26 then
                     index <= index + 1;
                     CurrentCounterState <= q0;
                  end if;
                  indey <= indey + 1;
               when q7 => 
                  if indey = 17 then
                     if set = "011" then
                        Char <= "00101011"; -- "+"
                     else 
                        Char <= "00100000"; -- " "
                     end if;
                  elsif indey = 18 then
                     Char <= "00100000"; -- " "
                  elsif indey = 19 then
                     Char <= "01001111"; -- "O"
                  elsif indey = 20 then
                     Char <= "01010000"; -- "P"
                  elsif indey = 21 then
                     Char <= "01000011"; -- "C"
                  elsif indey = 22 then
                     Char <= "01001010"; -- "J"
                  elsif indey = 23 then
                     Char <= "01000101"; -- "E"
                  elsif indey > 23 and indey < 26 then
                     Char <= "00100000"; -- " "
                  elsif indey = 26 then
                     index <= index + 1;
                     CurrentCounterState <= q2;
                  end if;
                  indey <= indey + 1;
               when q8 => 
                  if indey = 17 then
                     if set = "000" then
                        Char <= "00101011"; -- "+"
                     else 
                        Char <= "00100000"; -- " "
                     end if;
                  elsif indey = 18 then
                     Char <= "00100000"; -- " "
                  elsif indey = 19 then
                     Char <= "01010111"; -- "W"
                  elsif indey = 20 then
                     Char <= "01010010"; -- "R"
                  elsif indey = 21 then
                     Char <= "01001111"; -- "O"
                  elsif indey = 22 then
                     Char <= "01000011"; -- "C"
                  elsif indey > 22 and indey < 28 then
                     Char <= "00100000"; -- " "
                  elsif indey = 28 then
                     index <= index + 1;
                     CurrentCounterState <= q0;
                  end if;
                  indey <= indey + 1;
               when q10 => 
                  if indey = 17 then
                     if set = "001" then
                        Char <= "00101011"; -- "+"
                     else 
                        Char <= "00100000"; -- " "
                     end if;
                  elsif indey = 18 then
                     Char <= "00100000"; -- " "
                  elsif indey = 19 then
                     Char <= "01010000"; -- "P"
                  elsif indey = 20 then
                     Char <= "00110001"; -- "1"
                  elsif indey = 21 then
                     Char <= "00100000"; -- " "
                  elsif indey = 22 then
                     if P1(2) = '1' then
                        Char <= "00110001"; -- "1"
                     else 
                        Char <= "00110000"; -- "0"
                     end if;
                  elsif indey = 23 then
                     if P1(1) = '1' then
                        Char <= "00110001"; -- "1"
                     else 
                        Char <= "00110000"; -- "0"
                     end if;
                  elsif indey = 24 then
                     if P1(0) = '1' then
                        Char <= "00110001"; -- "1"
                     else 
                        Char <= "00110000"; -- "0"
                     end if;
                  elsif indey = 25 then
                     index <= index + 1;
                     CurrentCounterState <= q0;
                  end if;
                  indey <= indey + 1;
               when q12 => 
                  if indey = 17 then
                     if set = "011" then
                        Char <= "00101011"; -- "+"
                     else 
                        Char <= "00100000"; -- " "
                     end if;
                  elsif indey = 18 then
                     Char <= "00100000"; -- " "
                  elsif indey = 19 then
                     Char <= "01010000"; -- "P"
                  elsif indey = 20 then
                     Char <= "00110010"; -- "2"
                  elsif indey = 21 then
                     Char <= "00100000"; -- " "
                  elsif indey = 22 then
                     if P2(2) = '1' then
                        Char <= "00110001"; -- "1"
                     else 
                        Char <= "00110000"; -- "0"
                     end if;
                  elsif indey = 23 then
                     if P2(1) = '1' then
                        Char <= "00110001"; -- "1"
                     else 
                        Char <= "00110000"; -- "0"
                     end if;
                  elsif indey = 24 then
                     if P2(0) = '1' then
                        Char <= "00110001"; -- "1"
                     else 
                        Char <= "00110000"; -- "0"
                     end if;
                  elsif indey = 25 then
                     index <= index + 1;
                     CurrentCounterState <= q2;
                  end if;
                  indey <= indey + 1;
               when q666 =>
                  if ENTER = '1' then
                     CurrentCounterState <= q2;
                  end if;
            end case;
               
            case CurrentCounterState is
               when q0 =>
                  NewLine <= '1';
                  Char_WE <= '1'; -- new line
               when q1 => 
                  Char_DI <= "00100000";
                  Char_WE <= '1'; -- space
               when q2 =>
                  Goto00 <= '1';
                  Char_WE <= '1'; -- goto00
               when q666 =>
                  CurrentCounterState <= q666;
               when others =>
                  Char_DI <= Char ;
                  Char_WE <= '1';
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
	
		end if;
	end if;
end process;

P1_RGB <= std_logic_vector(P1);
P2_RGB <= std_logic_vector(P2);
Play <= gramy;
Pouse <= pauza;
Restart <= restart_game;

end Behavioral;

