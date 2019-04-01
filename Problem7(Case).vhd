--Here we use "PROCESS-STATEMENT" method, using "if" conditions.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem7_case is
  Port (input : in std_logic_vector(2 downto 0);
        output: out std_logic_vector(7 downto 0));
end problem7_case;

architecture Behavioral of problem7_case is

begin


    --process
    process(input)
        begin
            case(input) is
            when "000" => output <= "01111111";
            when "001" => output <= "10111111";
            when "010" => output <= "11011111";
            when "011" => output <= "11101111";
            when "100" => output <= "11110111";
            when "101" => output <= "11111011";
            when "110" => output <= "11111101";
            when "111" => output <= "11111110";
            when others => output <= "11111111";
            end case;
    end process;


end Behavioral;
