--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 03/12/2017 11:51:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/NAUKA/Xilinx/PONG/main.vhf -w D:/NAUKA/Xilinx/PONG/main.sch
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
   port ( );
end main;

architecture BEHAVIORAL of main is
   signal XLXI_1_CLK_openSignal       : std_logic;
   signal XLXI_1_CLR_openSignal       : std_logic;
   signal XLXI_1_RGB_openSignal       : std_logic_vector (2 downto 0);
   signal XLXI_2_Clk_Sys_openSignal   : std_logic;
   signal XLXI_2_Clk_50MHz_openSignal : std_logic;
   signal XLXI_2_PS2_Clk_openSignal   : std_logic;
   signal XLXI_2_PS2_Data_openSignal  : std_logic;
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
   
begin
   XLXI_1 : VGA_640x480
      port map (CLK=>XLXI_1_CLK_openSignal,
                CLR=>XLXI_1_CLR_openSignal,
                RGB(2 downto 0)=>XLXI_1_RGB_openSignal(2 downto 0),
                B=>open,
                G=>open,
                HS=>open,
                R=>open,
                VS=>open,
                X=>open,
                Y=>open);
   
   XLXI_2 : PS2_Kbd
      port map (Clk_Sys=>XLXI_2_Clk_Sys_openSignal,
                Clk_50MHz=>XLXI_2_Clk_50MHz_openSignal,
                PS2_Clk=>XLXI_2_PS2_Clk_openSignal,
                PS2_Data=>XLXI_2_PS2_Data_openSignal,
                DO=>open,
                DO_Rdy=>open,
                E0=>open,
                F0=>open);
   
end BEHAVIORAL;


