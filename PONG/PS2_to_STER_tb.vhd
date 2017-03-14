--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:55:16 03/12/2017
-- Design Name:   
-- Module Name:   D:/NAUKA/Xilinx/PONG/PS2_to_STER_tb.vhd
-- Project Name:  PONG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PS2_to_STER
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PS2_to_STER_tb IS
END PS2_to_STER_tb;
 
ARCHITECTURE behavior OF PS2_to_STER_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PS2_to_STER
    PORT(
         D_in : IN  std_logic_vector(7 downto 0);
         E0 : IN  std_logic;
         F0 : IN  std_logic;
         RS2_Rdy : IN  std_logic;
         Clr : IN  std_logic;
         Clk : IN  std_logic;
         Tx_Start : OUT  std_logic;
         P1 : OUT  std_logic_vector(2 downto 0);
         P2 : OUT  std_logic_vector(2 downto 0);
         ENTER : OUT  std_logic;
         ESC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D_in : std_logic_vector(7 downto 0) := (others => '0');
   signal E0 : std_logic := '0';
   signal F0 : std_logic := '0';
   signal RS2_Rdy : std_logic := '0';
   signal Clr : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Tx_Start : std_logic;
   signal P1 : std_logic_vector(2 downto 0);
   signal P2 : std_logic_vector(2 downto 0);
   signal ENTER : std_logic;
   signal ESC : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PS2_to_STER PORT MAP (
          D_in => D_in,
          E0 => E0,
          F0 => F0,
          RS2_Rdy => RS2_Rdy,
          Clr => Clr,
          Clk => Clk,
          Tx_Start => Tx_Start,
          P1 => P1,
          P2 => P2,
          ENTER => ENTER,
          ESC => ESC
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      clr <='1';
      wait for 100 ns;	
		clr <='0';

      wait for Clk_period*5;

      -- insert stimulus here 
		
			D_in <= "00011101"; --W
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "00011101";
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
		
			D_in <= "00011011"; --S
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "00011011";
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
		
			D_in <= "00011100"; --A
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "00011100";
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
			D_in <= "00100011"; --D
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "00100011";
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
			D_in <= "01011010"; --ENTER
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "01011010";
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
			D_in <= "01110110"; --ESC
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "01110110";
			RS2_Rdy <='1';
			E0 <= '0';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
		
			D_in <= "01101001"; --UP
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "01101001";
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
		
			D_in <= "01110010"; --DOWN
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "01110010";
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
		
			D_in <= "01101011"; --LEFT
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "01101011";
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
			D_in <= "01000111"; --RIGHT
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "01000111";
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
			
		
			D_in <= "01101011"; --LEFT
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			
			D_in <= "01000111"; --RIGHT
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '0';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			D_in <= "01000111";
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
			
			D_in <= "01101011";
			RS2_Rdy <='1';
			E0 <= '1';
			F0 <= '1';
		wait for Clk_period;
			RS2_Rdy <='0';
      wait for Clk_period*3;
			F0 <= '0';
			
      wait;
   end process;

END;
