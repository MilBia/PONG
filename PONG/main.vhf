--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 03/17/2017 14:24:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl F:/PONG/main.vhf -w F:/PONG/main.sch
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
   signal XLXN_1    : std_logic_vector (7 downto 0);
   signal XLXN_2    : std_logic;
   signal XLXN_3    : std_logic;
   signal XLXN_4    : std_logic;
   signal XLXN_10   : std_logic;
   signal XLXN_11   : std_logic;
   signal XLXN_12   : std_logic_vector (2 downto 0);
   signal XLXN_13   : std_logic_vector (2 downto 0);
   signal XLXN_16   : std_logic_vector (2 downto 0);
   signal XLXN_17   : std_logic_vector (9 downto 0);
   signal XLXN_18   : std_logic_vector (9 downto 0);
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
   
   component GAME
      port ( ENTER : in    std_logic; 
             ESC   : in    std_logic; 
             CLK   : in    std_logic; 
             CLR   : in    std_logic; 
             X     : in    std_logic_vector (9 downto 0); 
             Y     : in    std_logic_vector (9 downto 0); 
             P1    : in    std_logic_vector (2 downto 0); 
             P2    : in    std_logic_vector (2 downto 0); 
             RGB   : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   XLXI_1 : VGA_640x480
      port map (CLK=>Clk_50MHz,
                CLR=>btn_south,
                RGB(2 downto 0)=>XLXN_16(2 downto 0),
                B=>VGA_B,
                G=>VGA_G,
                HS=>VGA_HS,
                R=>VGA_R,
                VS=>VGA_VS,
                X(9 downto 0)=>XLXN_17(9 downto 0),
                Y(9 downto 0)=>XLXN_18(9 downto 0));
   
   XLXI_2 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_4,
                E0=>XLXN_2,
                F0=>XLXN_3);
   
   XLXI_3 : PS2_to_STER
      port map (Clk=>Clk_50MHz,
                Clr=>btn_south,
                D_in(7 downto 0)=>XLXN_1(7 downto 0),
                E0=>XLXN_2,
                F0=>XLXN_3,
                RS2_Rdy=>XLXN_4,
                ENTER=>XLXN_10,
                ESC=>XLXN_11,
                P1(2 downto 0)=>XLXN_12(2 downto 0),
                P2(2 downto 0)=>XLXN_13(2 downto 0));
   
   XLXI_4 : GAME
      port map (CLK=>Clk_50MHz,
                CLR=>btn_south,
                ENTER=>XLXN_10,
                ESC=>XLXN_11,
                P1(2 downto 0)=>XLXN_12(2 downto 0),
                P2(2 downto 0)=>XLXN_13(2 downto 0),
                X(9 downto 0)=>XLXN_17(9 downto 0),
                Y(9 downto 0)=>XLXN_18(9 downto 0),
                RGB(2 downto 0)=>XLXN_16(2 downto 0));
   
end BEHAVIORAL;


