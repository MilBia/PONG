--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Main.vhf
-- /___/   /\     Timestamp : 03/31/2017 13:51:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl F:/UCiSW2/VGAtxt/Main.vhf -w F:/UCiSW2/VGAtxt/Main.sch
--Design Name: Main
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

entity Main is
   port ( btn_west  : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end Main;

architecture BEHAVIORAL of Main is
   attribute BOX_TYPE   : string ;
   signal XLXN_3    : std_logic;
   signal XLXN_7    : std_logic;
   signal XLXN_10   : std_logic_vector (7 downto 0);
   signal XLXN_11   : std_logic;
   signal XLXN_12   : std_logic;
   signal XLXN_16   : std_logic;
   signal XLXN_21   : std_logic;
   signal XLXN_38   : std_logic;
   signal XLXN_81   : std_logic;
   signal XLXN_82   : std_logic;
   signal XLXN_83   : std_logic;
   signal XLXN_98   : std_logic_vector (7 downto 0);
   signal XLXN_99   : std_logic_vector (2 downto 0);
   signal XLXN_120  : std_logic;
   signal XLXN_122  : std_logic;
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component MENU
      port ( ENTER   : in    std_logic; 
             ESC     : in    std_logic; 
             Clk     : in    std_logic; 
             Reset   : in    std_logic; 
             Busy    : in    std_logic; 
             STER1   : in    std_logic_vector (2 downto 0); 
             Char_WE : out   std_logic; 
             NewLine : out   std_logic; 
             Goto00  : out   std_logic; 
             Char_DI : out   std_logic_vector (7 downto 0));
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_10(7 downto 0),
                Char_WE=>XLXN_11,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_7,
                Goto00=>XLXN_21,
                Home=>XLXN_7,
                NewLine=>XLXN_12,
                ScrollClear=>XLXN_7,
                ScrollEn=>XLXN_7,
                Busy=>XLXN_122,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_3,
                VGA_VS=>VGA_VS);
   
   XLXI_3 : BUF
      port map (I=>XLXN_3,
                O=>VGA_R);
   
   XLXI_4 : BUF
      port map (I=>XLXN_3,
                O=>VGA_G);
   
   XLXI_5 : BUF
      port map (I=>XLXN_3,
                O=>VGA_B);
   
   XLXI_6 : GND
      port map (G=>XLXN_7);
   
   XLXI_7 : MENU
      port map (Busy=>XLXN_16,
                Clk=>Clk_50MHz,
                ENTER=>XLXN_120,
                ESC=>XLXN_38,
                Reset=>btn_west,
                STER1(2 downto 0)=>XLXN_99(2 downto 0),
                Char_DI(7 downto 0)=>XLXN_10(7 downto 0),
                Char_WE=>XLXN_11,
                Goto00=>XLXN_21,
                NewLine=>XLXN_12);
   
   XLXI_9 : PS2_to_STER
      port map (Clk=>Clk_50MHz,
                Clr=>btn_west,
                D_in(7 downto 0)=>XLXN_98(7 downto 0),
                E0=>XLXN_81,
                F0=>XLXN_82,
                RS2_Rdy=>XLXN_83,
                ENTER=>XLXN_120,
                ESC=>XLXN_38,
                P1(2 downto 0)=>XLXN_99(2 downto 0),
                P2=>open);
   
   XLXI_10 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_98(7 downto 0),
                DO_Rdy=>XLXN_83,
                E0=>XLXN_81,
                F0=>XLXN_82);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_122,
                I1=>btn_west,
                O=>XLXN_16);
   
end BEHAVIORAL;


