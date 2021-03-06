--Remember that a DECODER is the opposite of a MULTIPLEXER

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circuit is
        Port (
              input : in std_logic_vector(2 downto 0);      --Notice here the SEL from the previous example became the INPUT
              output: out std_logic_vector(7 downto 0));    --Notice here that the INPUT from the previous example became the OUTPUT
end circuit;

  
architecture Behavioral of circuit is
        begin
              process(input)            --process
                      begin
                            if   (input = "000") then
                                      output <= "01111111";     --Notice here that the output is represented as an 8-bit identifier
                            elsif(input = "001") then
                                      output <= "10111111";   
                            elsif(input = "010") then
                                      output <= "11011111";
                            elsif(input = "011") then
                                      output <= "11101111";
                            elsif(input = "100") then
                                      output <= "11110111";
                            elsif(input = "101") then
                                      output <= "11111011";
                            elsif(input = "110") then
                                      output <= "11111101";
                            elsif(input = "111") then
                                    output <= "11111110";
                            else
                                   output <= "11111111";
                            end if;
              end process;
end Behavioral;
