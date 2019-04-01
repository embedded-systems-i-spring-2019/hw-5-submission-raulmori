ibrary IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem6_case is
  Port (input : in std_logic_vector(7 downto 0);
        sel : in std_logic_vector(2 downto 0);
        output : out std_logic );
end problem6_case;

architecture Behavioral of problem6_case is

begin


    --process
    process(input, sel)
        begin
            case(sel) is
                when "000" => output <= input(0);
                when "001" => output <= input(1);
                when "010" => output <= input(2);
                when "011" => output <= input(3);
                when "100" => output <= input(4);
                when "101" => output <= input(5);
                when "110" => output <= input(6);
                when "111" => output <= input(7);
                when others => output <= '0';
                end case;
                 
    end process;


end Behavioral;
