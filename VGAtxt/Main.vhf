--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Main.vhf
-- /___/   /\     Timestamp : 03/24/2017 13:37:01
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
   signal XLXN_20   : std_logic;
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
      port ( Clk     : in    std_logic; 
             Reset   : in    std_logic; 
             Busy    : in    std_logic; 
             Char_WE : out   std_logic; 
             NewLine : out   std_logic; 
             Char_DI : out   std_logic_vector (7 downto 0));
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
                Goto00=>XLXN_7,
                Home=>XLXN_7,
                NewLine=>XLXN_12,
                ScrollClear=>XLXN_7,
                ScrollEn=>XLXN_7,
                Busy=>XLXN_16,
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
      port map (Busy=>XLXN_20,
                Clk=>Clk_50MHz,
                Reset=>btn_west,
                Char_DI(7 downto 0)=>XLXN_10(7 downto 0),
                Char_WE=>XLXN_11,
                NewLine=>XLXN_12);
   
   XLXI_8 : OR2
      port map (I0=>XLXN_16,
                I1=>btn_west,
                O=>XLXN_20);
   
end BEHAVIORAL;


