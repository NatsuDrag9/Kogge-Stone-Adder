----------------------------------------------------------------------------------
-- Create Date: 14.04.2018 11:53:39
-- Module Name: Package File
-- Project Name: Kogge-Stone-Adder
-- Target Devices: Xilinx Zedboard
-- Description: This is the package file to link all the different modules 			(files)

-- Additional Comments: This intended to for educational purpose only.
                     -- Please refrain from commercial distribution.

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Package Carry_Tree_Adder_pkg is

    Component Generator is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               G_out : out STD_LOGIC;
               P_out : out STD_LOGIC);
     end component;
     
     Component Carry_oper is
            Port ( G_prev : in STD_LOGIC;
            G_curr : in STD_LOGIC;
            P_prev : in STD_LOGIC;
            P_curr : in STD_LOGIC;
            G_out : out STD_LOGIC;
            P_out : out STD_LOGIC);
     end component;

end Carry_Tree_Adder_pkg;
