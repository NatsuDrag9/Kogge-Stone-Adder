----------------------------------------------------------------------------------
-- Create Date: 14.04.2018 11:53:39
-- Module Name: Test Bench
-- Project Name: Kogge-Stone-Adder
-- Target Devices: Xilinx Zedboard
-- Description: This is the test bench file created using the doulos test bench generator (mentioned in the reference section below).
             -- A test input has been provided.
-- Additional Comments: This intended to for educational purpose only.
                     -- Please refrain from commercial distribution.

-- Reference : https://www.doulos.com/knowhow/perl/testbench_creation/  
----------------------------------------------------------------------------------


library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Kogge_Stone_Adder_tb is
end;

architecture bench of Kogge_Stone_Adder_tb is

  component Kogge_Stone_Adder
      Port  (A : in std_logic_vector(3 downto 0);
             B : in std_logic_vector(3 downto 0);
             C_in : in STD_LOGIC_VECTOR(0 downto 0) := "0";
             C_out : out STD_LOGIC;
             Sum_out : out STD_LOGIC_VECTOR(3 downto 0));
  end component;

  signal A: std_logic_vector(3 downto 0);
  signal B: std_logic_vector(3 downto 0);
  signal C_in: STD_LOGIC_VECTOR(0 downto 0) := "0";
  signal C_out: STD_LOGIC;
  signal Sum_out: STD_LOGIC_VECTOR(3 downto 0);

begin

  uut: Kogge_Stone_Adder port map ( A       => A,
                                    B       => B,
                                    C_in    => C_in,
                                    C_out   => C_out,
                                    Sum_out => Sum_out );

  stimulus: process
  begin
  A <= "1101";
  B <= "1100";
  wait;
  end process;


end;