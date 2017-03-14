----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:30:58 01/22/2017 
-- Design Name: 
-- Module Name:    GAME - Behavioral 
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

entity GAME is
    Port ( X : in  STD_LOGIC_VECTOR (9 downto 0);
           Y : in  STD_LOGIC_VECTOR (9 downto 0);
           P1 : in  STD_LOGIC_VECTOR (2 downto 0);
           P2 : in  STD_LOGIC_VECTOR (2 downto 0);
           ENTER : in  STD_LOGIC;
           ESC : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
end GAME;


architecture Behavioral of GAME is

signal Clock : STD_LOGIC;
--wsad po³o¿enia kursora
signal  Xi :  Integer range 0 to 1023;
signal  Yi :  Integer range 0 to 1023;
--wspó³rzêdne pi³eczki
signal  Xkw: Integer range 0 to 1023;
signal  Ykw: Integer range 0 to 1023;
--co ile odswierzyæ po³o¿enie pi³eczki
signal  temp: Integer range 0 to 1023;
--rozmiar pi³eczki
constant R :  Integer:=40;
--wsad sterownika
signal  P1i :  STD_LOGIC_VECTOR (2 downto 0);
signal  P2i :  STD_LOGIC_VECTOR (2 downto 0);
--wspó³rzêdne paletek
signal  pal1 : Integer range 0 to 1023;
signal  pal2 : Integer range 0 to 1023;
--rozmiar paletek
constant palX :  Integer:=40;
constant palY :  Integer:=100;
--punkty
signal pkt1 : STD_LOGIC_VECTOR (2 downto 0);
signal pkt2 : STD_LOGIC_VECTOR (2 downto 0);
signal Vx :  STD_LOGIC;
signal Vy :  STD_LOGIC;

begin
Xi <= TO_INTEGER( UNSIGNED( x));
Yi <= TO_INTEGER( UNSIGNED( y));

P1i <= P1;
P2i <= P2;

Cloc: process (Clock, CLR)
begin
	if CLR = '1' then
		Clock <= '0';
   elsif rising_edge( Clk ) then
		Clock <= not Clock;
   end if;
end process;

gra : process(P1, P2, CLK,CLR)
begin
	if CLR = '1' then
		RGB <= "000";
      Xkw <= 279;
      Ykw <= 0;
      Vx <='1';
      Vy <='1';
      Xkw <= 279;
      Ykw <= 0;
      temp <= 0;
		pkt1 <= "000";
		pkt1 <= "000";
		pal1 <= 190;
		pal1 <= 190;
	else
		--wyswietlanie
      if Xi> Xkw and Xi<Xkw+R and Yi>Ykw and Yi<Ykw+R then
				RGB <="111";
			elsif Xi > 20 and Xi< 40 and Yi>pal1 and Yi<pal1+palY  then
				RGB <="100";
			elsif Xi > 439 and Xi< 459 and Yi>pal2 and Yi<pal2+palY  then
				RGB <="001";
			else
				RGB <="000";
		end if;
		
		--sterowanie paletk¹1
      if (P1i = "000" or P1i = "011") and pal1-1>0 then
				pal1 <= pal1 - 1 ;
			elsif (P1i = "001" or P1i = "010") and pal1+1+palY<479 then
				pal1 <= pal1 + 1 ;
		end if;
		
		--sterowanie paletk¹2
      if (P2i = "000" or P2i = "011") and pal2-1>0 then
				pal2 <= pal2 - 1 ;
			elsif (P2i = "001" or P2i = "010") and pal2+1+palY<479 then
				pal2 <= pal2 + 1 ;
		end if;
		
		--sterowanie pi³eczk¹
      if Yi = 479 then
         temp <= temp +1;
         if temp = 150 then
            temp <= 0;
            --kolizje
				--prawa / lewa banda
            if Xkw+R = 639 or Xkw=0 then
               Vx <= not Vx;
            end if;
				--dolna / górna banda
            if Ykw+R = 479 or Ykw=0 then
               Vy <= not Vy;
            end if;
            --inkrementacje
            if Vx ='1' then
               Xkw <= Xkw +1;
            else
               Xkw <= Xkw -1;
            end if;
            if Vy ='1' then
               Ykw <= Ykw +1;
            else
               Ykw <= Ykw -1;
            end if;
         end if;
      
      
      end if;
   
   
--		R <= ((Xi-320)*(Xi-320))+((Yi-240)*(Yi-240));
--		if R<=400 then
--			RGB <= "110";
--		else
--			RGB <= "000";
--		end if;
	end if;
end process;

end Behavioral;

