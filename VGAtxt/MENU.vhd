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
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Busy : in  STD_LOGIC;
           Char_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           Char_WE : out  STD_LOGIC;
           NewLine : out  STD_LOGIC);
           --Goto00 : out  STD_LOGIC);
end MENU;

architecture Behavioral of MENU is
----MENU G£ÓWNE
--	q0 - new line x10(x8 jeœli implementacja q1 o q2)
--	q1 - (17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " KONTYNUUJ" (00100000 01001011 01001111 01001110 01010100 01011001 01001110 01010101 01010101 01001010)), ca³oœæ jeœli gra ju¿ trwa (implementacja druga kolejnoœæ)
--	q2 - new line 1x (implementacja druga kolejnoœæ)
--	q3 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " GRAJ" (00100000 01000111 01010010 01000001 01001010)
--	q4 - new line 1x
--	q5 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " OPCJE" (00100000 01001111 01010000 01000011 01001010 01000101)
--	q6 - czyszczenie linii 8, 10, 12 jeœli siê da / scroll x13 najprawdopodobniej ¿eby przewin¹æ i pozbyæ siê zbêdnych 
--			/ najbardziej realne wydaje siê jednak pojœcie do Goto00, przejœcie odpowiedniej iloœci linii i nadpisanie zawartoœcis
----OPCJE
--	q7 - new line 8x
--	q8 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " WROC" (00100000 01010111 01010010 01001111 01000011)
--	q9 - new line 1x
--	q10 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " P1 RGB" (RGD -> _ _ _ wype³nione 0/1) (00100000 01010000 00110001 00100000 00110001 00110000 00110000)
--	q11 - new line 1x
--	q12 - 17 spacji, opcjonalny "+" (00101011) jeœli w³aœnie wybrane i " P2 RGB" (RGD -> _ _ _ wype³nione 0/1) (00100000 01010000 00110010 00100000 00110000 00110000 00110001)
	
	
	type CounterState is (q0,q1,q2,q3,q4,q5,q6,q7,q8,q9, q10, q11, q12, q13, q14);
	signal CurrentCounterState : CounterState;
	signal Clk_Counter : STD_LOGIC_VECTOR(2 downto 0);-- := (others => '0');
   signal index : integer range 0 to 25;
	
begin

process(Busy, Clk, Reset)	
begin
	if(Reset = '1' and Busy = '0') then
		Clk_Counter <= (others => '0');
		CurrentCounterState <= q0;
		Char_DI <= X"30";
		Char_WE <= '0';
      
	elsif(rising_edge(Clk)) then
         Clk_Counter <= std_logic_vector( unsigned(Clk_Counter) + 1 );
         if(Clk_Counter = "010" and Busy = '0') then
            Clk_Counter <= (others => '0');
            
            case CurrentCounterState is
               when q0 => 
                  if index = 0 then
                     index <= index + 1;
                     CurrentCounterState <= q2;
                  end if;
                  if index = 1 then
                     index <= index + 1;
                     CurrentCounterState <= q3;
                  end if;
                  if index = 2 then
                     index <= index + 1;
                     CurrentCounterState <= q4;
                  end if;
                  if index = 3 then
                     index <= index + 1;
                     CurrentCounterState <= q5;
                  end if;
                  if index = 4 then
                     index <= index + 1;
                     CurrentCounterState <= q6;
                  end if;
                  if index = 5 then
                     index <= index + 1;
                     CurrentCounterState <= q7;
                  end if;
                  if index = 6 then
                     index <= index + 1;
                     CurrentCounterState <= q8;
                  end if;
                  if index = 7 then
                     index <= index + 1;
                     CurrentCounterState <= q9;
                  end if;
                  if index = 8 then
                     index <= index + 1;
                     CurrentCounterState <= q10;
                  end if;
                  if index = 9 then
                     index <= index + 1;
                     CurrentCounterState <= q11;
                  end if;
                  if index = 10 then
                     index <= index + 1;
                     CurrentCounterState <= q12;
                  end if;
                  
               when q1 => 
                  if index < 24 then
                     index <= index + 1;
                  else
                     CurrentCounterState <= q2;
                  end if;
               when q2 => CurrentCounterState <= q0;
               when q3 => CurrentCounterState <= q0;
               when q4 => CurrentCounterState <= q0;
               when q5 => CurrentCounterState <= q0;
               when q6 => CurrentCounterState <= q0;
               when q7 => CurrentCounterState <= q0;
               when q8 => CurrentCounterState <= q0;
               when q9 => CurrentCounterState <= q0;
               when q10 => CurrentCounterState <= q0;
               when q11 => CurrentCounterState <= q0;
               when q12 => CurrentCounterState <= q14;
               when q13 => CurrentCounterState <= q14;
               when q14 => CurrentCounterState <= q14;
            end case;
               
            case CurrentCounterState is
               when q0 => NewLine <= '1'; Char_WE <= '1'; -- new line
               when q1 => Char_DI <= "00100000"; Char_WE <= '1'; -- space
               when q2 => Char_DI <= "01000111"; Char_WE <= '1'; -- G
               when q3 => Char_DI <= "01100001"; Char_WE <= '1'; -- a
               when q4 => Char_DI <= "01101101"; Char_WE <= '1'; -- m
               when q5 => Char_DI <= "01100101"; Char_WE <= '1'; -- e
               when q6 => Char_DI <= "00100000"; Char_WE <= '1'; -- space
               when q7 => Char_DI <= "00100000"; Char_WE <= '1'; -- space
               when q8 => Char_DI <= "00100000"; Char_WE <= '1'; -- space
               when q9 => Char_DI <= "01101111"; Char_WE <= '1'; -- o
               when q10 => Char_DI <= "01110110"; Char_WE <= '1'; -- v
               when q11 => Char_DI <= "01100101"; Char_WE <= '1'; -- e
               when q12 => Char_DI <= "01110010"; Char_WE <= '1'; -- r
               when q13 => Char_DI <= "00100000"; Char_WE <= '1'; -- space
               when q14 => index <= 0;
            end case;
            
            						
         else
            Char_WE <= '0';
            NewLine <= '0';
         end if;
   end if;
end process;


end Behavioral;

