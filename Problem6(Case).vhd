--In here we use the case method
--Using the IF-MAIN with the SUB-CASE is better VHDL programming practice (Remember more code is better)
--In this case we don't have to use it because there is not a CLOCK-ENABLE (CE)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem6_case is
      Port (
            DATA_in : in std_logic_vector(7 downto 0);   --This is the 8-bit INPUT bundle
            SEL : in std_logic_vector(2 downto 0);      --This is dummy variable we creat to control the OPTIONS
            Output : out std_logic );
end problem6_case;

architecture Behavioral of problem6_case is

      begin
            process(DATA_in, SEL)           --process
                  begin
                      case(SEL) is                            --This is the "case method" of PROCESS-STATEMENT
                              when "000" => 
                                    Output <= DATA_in(0);
                              when "001" => 
                                    Output <= DATA_in(1);
                              when "010" => 
                                    Output <= DATA_in(2);
                              when "011" => 
                                    Output <= DATA_in(3);
                              when "100" => 
                                    Output <= DATA_in(4);
                              when "101" => 
                                    Output <= DATA_in(5);
                              when "110" => 
                                    Output <= DATA_in(6);
                              when "111" => 
                                    Output <= DATA_in(7);     --Notice we have 8 bits
                              when others =>
                                    Output <= '0';        --The last outputs a "0" to eliminate bugs
                          end case;
            end process;
end Behavioral;
