----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem3 is
  Port (A, B : in std_logic_vector(1 downto 0);
        D: in std_logic;
        E_out : out std_logic);
end problem3;

architecture Behavioral of problem3 is

--intermediate signals
signal A_out, B_out, C_out : std_logic;

begin

--concurrent architecture
A_out <= A(0) AND A(1);
B_out <= B(0) OR B(1);
C_out <= B(1) AND (not D);
E_out <= A_out OR B_out OR C_out;


end Behavioral;
