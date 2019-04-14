--Here We do the same problem using "PROCESS-STATEMENT" using the "if-method"
--The only Differe is that we don't have a CLOCK-ENABLE (CE)
--This is the Exact same as EXAMPLE#11 from Chapter8

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
              DATA_in : in std_logic_vector(7 downto 0);
              SEL : in std_logic_vector(2 downto 0);
              Output : out std_logic );
end circuit;

  
architecture Behavioral of circuit is

      begin
            process(DATA_in, SEL)                   --process
                    begin
                        if   (SEL = "000") then
                                    output <= DATA_in(0);
                        elsif(SEL = "001") then           --Remember that "elsif" is still part of the "main-if"
                                    output <= DATA_in(1);
                        elsif(SEL = "010") then
                                    output <= DATA_in(2);
                        elsif(SEL = "011") then
                                    output <= DATA_in(3);
                        elsif(SEL = "100") then
                                    output <= DATA_in(4);
                        elsif(SEL = "101") then
                                    output <= DATA_in(5);
                        elsif(SEL = "110") then
                                    output <= DATA_in(6);
                        elsif(SEL = "111") then
                                    output <= DATA_in(7);
                        else
                                    Output <= '0';
                        end if;                         --This ends the main-if 
            end process;
end Behavioral;
