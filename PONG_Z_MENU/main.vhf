--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 04/28/2017 11:39:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "F:/PONG_Z_MENU - Kopia/main.vhf" -w "F:/PONG_Z_MENU - Kopia/main.sch"
--Design Name: main
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( btn_south : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end main;

architecture BEHAVIORAL of main is
   attribute BOX_TYPE   : string ;
   signal XLXN_1    : std_logic_vector (7 downto 0);
   signal XLXN_2    : std_logic;
   signal XLXN_3    : std_logic;
   signal XLXN_4    : std_logic;
   signal XLXN_5    : std_logic_vector (2 downto 0);
   signal XLXN_6    : std_logic;
   signal XLXN_7    : std_logic;
   signal XLXN_8    : std_logic;
   signal XLXN_9    : std_logic;
   signal XLXN_10   : std_logic;
   signal XLXN_18   : std_logic;
   signal XLXN_20   : std_logic;
   signal XLXN_21   : std_logic_vector (7 downto 0);
   signal XLXN_24   : std_logic;
   signal XLXN_25   : std_logic;
   signal XLXN_26   : std_logic;
   signal XLXN_28   : std_logic_vector (2 downto 0);
   signal XLXN_30   : std_logic_vector (2 downto 0);
   signal XLXN_39   : std_logic_vector (9 downto 0);
   signal XLXN_49   : std_logic;
   signal XLXN_51   : std_logic;
   signal XLXN_60   : std_logic;
   signal XLXN_61   : std_logic;
   signal XLXN_62   : std_logic_vector (2 downto 0);
   signal XLXN_63   : std_logic_vector (2 downto 0);
   signal XLXN_64   : std_logic;
   signal XLXN_75   : std_logic;
   signal XLXN_82   : std_logic;
   signal XLXN_83   : std_logic;
   signal XLXN_84   : std_logic;
   signal XLXN_85   : std_logic;
   signal XLXN_91   : std_logic;
   signal XLXN_92   : std_logic_vector (9 downto 0);
   component GAME
      port ( CLK    : in    std_logic; 
             CLR    : in    std_logic; 
             Play   : in    std_logic; 
             Pouse  : in    std_logic; 
             X      : in    std_logic_vector (9 downto 0); 
             Y      : in    std_logic_vector (9 downto 0); 
             P1     : in    std_logic_vector (2 downto 0); 
             P2     : in    std_logic_vector (2 downto 0); 
             P1_RGB : in    std_logic_vector (2 downto 0); 
             P2_RGB : in    std_logic_vector (2 downto 0); 
             Finish : out   std_logic; 
             RGB    : out   std_logic_vector (2 downto 0));
   end component;
   
   component MENU
      port ( ENTER   : in    std_logic; 
             ESC     : in    std_logic; 
             Clk     : in    std_logic; 
             Reset   : in    std_logic; 
             Busy    : in    std_logic; 
             Finish  : in    std_logic; 
             STER1   : in    std_logic_vector (2 downto 0); 
             Char_WE : out   std_logic; 
             NewLine : out   std_logic; 
             Goto00  : out   std_logic; 
             Play    : out   std_logic; 
             Pouse   : out   std_logic; 
             Restart : out   std_logic; 
             Char_DI : out   std_logic_vector (7 downto 0); 
             P1_RGB  : out   std_logic_vector (2 downto 0); 
             P2_RGB  : out   std_logic_vector (2 downto 0));
   end component;
   
   component OUTPUT
      port ( HS1    : in    std_logic; 
             VS1    : in    std_logic; 
             R1     : in    std_logic; 
             G1     : in    std_logic; 
             B1     : in    std_logic; 
             HS2    : in    std_logic; 
             VS2    : in    std_logic; 
             RGB2   : in    std_logic; 
             Play   : in    std_logic; 
             Pouse  : in    std_logic; 
             VGA_HS : out   std_logic; 
             VGA_VS : out   std_logic; 
             VGA_R  : out   std_logic; 
             VGA_G  : out   std_logic; 
             VGA_B  : out   std_logic);
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component PS2_to_STER
      port ( E0      : in    std_logic; 
             F0      : in    std_logic; 
             RS2_Rdy : in    std_logic; 
             Clr     : in    std_logic; 
             Clk     : in    std_logic; 
             D_in    : in    std_logic_vector (7 downto 0); 
             ENTER   : out   std_logic; 
             ESC     : out   std_logic; 
             P1      : out   std_logic_vector (2 downto 0); 
             P2      : out   std_logic_vector (2 downto 0));
   end component;
   
   component VGA_640x480
      port ( CLK : in    std_logic; 
             CLR : in    std_logic; 
             RGB : in    std_logic_vector (2 downto 0); 
             R   : out   std_logic; 
             G   : out   std_logic; 
             B   : out   std_logic; 
             HS  : out   std_logic; 
             VS  : out   std_logic; 
             X   : out   std_logic_vector (9 downto 0); 
             Y   : out   std_logic_vector (9 downto 0));
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : GAME
      port map (CLK=>Clk_50MHz,
                CLR=>XLXN_91,
                Play=>XLXN_60,
                Pouse=>XLXN_61,
                P1(2 downto 0)=>XLXN_28(2 downto 0),
                P1_RGB(2 downto 0)=>XLXN_62(2 downto 0),
                P2(2 downto 0)=>XLXN_30(2 downto 0),
                P2_RGB(2 downto 0)=>XLXN_63(2 downto 0),
                X(9 downto 0)=>XLXN_92(9 downto 0),
                Y(9 downto 0)=>XLXN_39(9 downto 0),
                Finish=>XLXN_75,
                RGB(2 downto 0)=>XLXN_5(2 downto 0));
   
   XLXI_2 : MENU
      port map (Busy=>XLXN_49,
                Clk=>Clk_50MHz,
                ENTER=>XLXN_84,
                ESC=>XLXN_18,
                Finish=>XLXN_75,
                Reset=>btn_south,
                STER1(2 downto 0)=>XLXN_28(2 downto 0),
                Char_DI(7 downto 0)=>XLXN_21(7 downto 0),
                Char_WE=>XLXN_20,
                Goto00=>XLXN_82,
                NewLine=>XLXN_64,
                Play=>XLXN_60,
                Pouse=>XLXN_61,
                P1_RGB(2 downto 0)=>XLXN_62(2 downto 0),
                P2_RGB(2 downto 0)=>XLXN_63(2 downto 0),
                Restart=>XLXN_85);
   
   XLXI_3 : OUTPUT
      port map (B1=>XLXN_10,
                G1=>XLXN_9,
                HS1=>XLXN_6,
                HS2=>XLXN_24,
                Play=>XLXN_60,
                Pouse=>XLXN_61,
                RGB2=>XLXN_26,
                R1=>XLXN_8,
                VS1=>XLXN_7,
                VS2=>XLXN_25,
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_HS=>VGA_HS,
                VGA_R=>VGA_R,
                VGA_VS=>VGA_VS);
   
   XLXI_4 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_4,
                E0=>XLXN_2,
                F0=>XLXN_3);
   
   XLXI_5 : PS2_to_STER
      port map (Clk=>Clk_50MHz,
                Clr=>btn_south,
                D_in(7 downto 0)=>XLXN_1(7 downto 0),
                E0=>XLXN_2,
                F0=>XLXN_3,
                RS2_Rdy=>XLXN_4,
                ENTER=>XLXN_84,
                ESC=>XLXN_18,
                P1(2 downto 0)=>XLXN_28(2 downto 0),
                P2(2 downto 0)=>XLXN_30(2 downto 0));
   
   XLXI_6 : VGA_640x480
      port map (CLK=>Clk_50MHz,
                CLR=>btn_south,
                RGB(2 downto 0)=>XLXN_5(2 downto 0),
                B=>XLXN_10,
                G=>XLXN_9,
                HS=>XLXN_6,
                R=>XLXN_8,
                VS=>XLXN_7,
                X(9 downto 0)=>XLXN_92(9 downto 0),
                Y(9 downto 0)=>XLXN_39(9 downto 0));
   
   XLXI_7 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_21(7 downto 0),
                Char_WE=>XLXN_20,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_83,
                Goto00=>XLXN_82,
                Home=>XLXN_83,
                NewLine=>XLXN_64,
                ScrollClear=>XLXN_83,
                ScrollEn=>XLXN_83,
                Busy=>XLXN_51,
                VGA_HS=>XLXN_24,
                VGA_RGB=>XLXN_26,
                VGA_VS=>XLXN_25);
   
   XLXI_8 : OR2
      port map (I0=>XLXN_51,
                I1=>btn_south,
                O=>XLXN_49);
   
   XLXI_9 : GND
      port map (G=>XLXN_83);
   
   XLXI_10 : OR2
      port map (I0=>btn_south,
                I1=>XLXN_85,
                O=>XLXN_91);
   
end BEHAVIORAL;


