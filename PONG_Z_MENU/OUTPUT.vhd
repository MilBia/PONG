----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:17 04/01/2017 
-- Design Name: 
-- Module Name:    OUTPUT - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OUTPUT is
    Port ( HS1 : in  STD_LOGIC;
           VS1 : in  STD_LOGIC;
           R1 : in  STD_LOGIC;
           G1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           HS2 : in  STD_LOGIC;
           VS2 : in  STD_LOGIC;
           RGB2 : in  STD_LOGIC;
           Play : in  STD_LOGIC;
           Pouse : in  STD_LOGIC;
           VGA_HS : out  STD_LOGIC;
           VGA_VS : out  STD_LOGIC;
           VGA_R : out  STD_LOGIC;
           VGA_G : out  STD_LOGIC;
           VGA_B : out  STD_LOGIC);
end OUTPUT;

architecture Behavioral of OUTPUT is
--signal HS1 :  STD_LOGIC;
--signal VS1 :  STD_LOGIC;
--signal R_IN1 :  STD_LOGIC;
--signal G_IN1 :  STD_LOGIC;
--signal B_IN1 :  STD_LOGIC;
--signal HS2 :  STD_LOGIC;
--signal VS2 :  STD_LOGIC;
--signal RGB_IN2 :  STD_LOGIC;

begin

VGA_HS <=
	HS1 when Play = '1' and Pouse = '0' else
	HS2;

VGA_VS <=
	VS1 when Play = '1' and Pouse = '0' else
	VS2;

VGA_R <=
	R1 when Play = '1' and Pouse = '0' else
	RGB2;
	
VGA_G <=
	G1 when Play = '1' and Pouse = '0' else
	RGB2;
	
VGA_B <=
	B1 when Play = '1' and Pouse = '0' else
	RGB2;

end Behavioral;

