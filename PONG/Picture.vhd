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
--wsad po�o�enia kursora
signal  Xi :  Integer range 0 to 1023;
signal  Yi :  Integer range 0 to 1023;
--wsp�rz�dne pi�eczki
signal  Xkw: Integer range 0 to 640;
signal  Ykw: Integer range 0 to 480;
--co ile odswierzy� po�o�enie pi�eczki
signal  temp: Integer range 0 to 511;
--rozmiar pi�eczki
constant R :  Integer:=10;
--wsad sterownika
signal  P1i :  STD_LOGIC_VECTOR (2 downto 0);
signal  P2i :  STD_LOGIC_VECTOR (2 downto 0);
--wsp�rz�dne paletek
signal  pal1 : Integer range 0 to 1023;
signal  pal2 : Integer range 0 to 1023;
--rozmiar paletek
constant palX :  Integer:=15;
constant palY :  Integer:=100;
--punkty
signal pkt1 : Integer range 0 to 5;
signal pkt2 : Integer range 0 to 5;
signal Vx :  STD_LOGIC;
signal Vy :  STD_LOGIC;
--czy gramy
signal play :  STD_LOGIC;

begin
Xi <= TO_INTEGER( UNSIGNED( x));
Yi <= TO_INTEGER( UNSIGNED( y));

P1i <= P1;
P2i <= P2;

Cloc: process (CLK, CLR)
begin
	if CLR = '1' then
		Clock <= '0';
   elsif rising_edge( Clk ) then
		Clock <= not Clock;
   end if;
end process;

gra : process(Clock, CLR)
begin
	if CLR = '1' then
		RGB <= "000";
      Xkw <= 279;
      Ykw <= 0;
      Vx <='1';
      Vy <='1';
      temp <= 0;
		pkt1 <= 0;
		pkt2 <= 0;
		pal1 <= 190;
		pal2 <= 190;
      Xkw <= 39;
      Ykw <= pal2 + 50;
      play <= '0';
   elsif rising_edge( Clock ) then
		--wyswietlanie
      if Xi> Xkw and Xi<Xkw+R and Yi>Ykw and Yi<Ykw+R then --po�eczka
			RGB <="111";
		elsif Xi > 619 and Xi< 639 and Yi>pal1 and Yi<pal1+palY  then --paletka1
			RGB <="001";
		elsif Xi > 400 and Xi< (400 + (10*pkt1)) and Yi>10 and Yi<20 then --pkt1
         if pkt1 < 5 then
            RGB <="001";
         else
            RGB <="111";
         end if;
		elsif Xi > 20 and Xi< 40 and Yi>pal2 and Yi<pal2+palY  then --paletka2
			RGB <="100";
		elsif Xi > (200 - (10*pkt2)) and Xi< 200 and Yi>10 and Yi<20 then --pkt2
         if pkt2 < 5 then
            RGB <="100";
         else
            RGB <="111";
         end if;
		else --t�o
			RGB <="000";
		end if;
      
      --ENTER startuje gr�
      if ENTER = '1' and play = '0' then
         play <='1';
         pkt1 <= 0;
         pkt2 <= 0;
         Xkw <= 39;
         Ykw <= pal2 + 50;
      end if;
		
		--sterowanie pi�eczk� / zwolnienie zegara
      if Yi = 479 and play = '1' then
         temp <= temp +1;
         if temp = 0 then
         --PI�ECZAK
            --temp <= 0;
            --kolizje
--				--prawa / lewa banda
--            if (Xkw+R = 638 or Xkw=1) then
--               Vx <= not Vx;
--            end if;
--				--dolna / g�rna banda
--            if (Ykw+R = 478 or Ykw=1) then
--               Vy <= not Vy;
--            end if;
            --inkrementacje i odbicia
            if Vy ='1' then
               Ykw <= Ykw + 1;
               if Ykw+R = 478 then --dolna banda
                  Vy <= '0';
               end if;
            else
               Ykw <= Ykw - 1;
               if Ykw = 1 then --g�rna banda
                  Vy <= '1';
               end if;
            end if;
            if Vx ='1' then
               Xkw <= Xkw + 1;
               if Xkw+R = 618 then --prawa banda
						if Ykw>pal1 and Ykw<pal1+palY then
							Vx <= '0';
						else
							pkt2 <= pkt2 + 1;
                     if pkt2 = 4 then
                        play <= '0';
                     end if;
							Xkw <= 618 - R;
							Ykw <= pal1 + 50;
						end if;
               end if;
            else
               Xkw <= Xkw - 1;
               if Xkw = 39 then --lewa banda
						if Ykw>pal2 and Ykw<pal2+palY then
							Vx <= '1';
						else
							pkt1 <= pkt1 + 1;
                     if pkt1 = 4 then
                        play <= '0';
                     end if;
							Xkw <= 39;
							Ykw <= pal2 + 50;
						end if;
               end if;
            end if;
         --PALETKI
            --sterowanie paletk�1
            if (P1i = "000" or P1i = "011") and pal1-1>0 then
                  pal1 <= pal1 - 1 ;
               elsif (P1i = "001" or P1i = "010") and pal1+1+palY<479 then
                  pal1 <= pal1 + 1 ;
            end if;
            
            --sterowanie paletk�2
            if (P2i = "000" or P2i = "011") and pal2-1>0 then
                  pal2 <= pal2 - 1 ;
               elsif (P2i = "001" or P2i = "010") and pal2+1+palY<479 then
                  pal2 <= pal2 + 1 ;
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

