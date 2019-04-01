library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem6_if is
  Port (input : in std_logic_vector(7 downto 0);
        sel : in std_logic_vector(2 downto 0);
        output : out std_logic );
end problem6_if;

architecture Behavioral of problem6_if is

begin

    --process
    process(input, sel)
        begin
            if(sel = "000") then
                output <= input(0);
            elsif(sel = "001") then
                output <= input(1);
            elsif(sel = "010") then
                output <= input(2);
            elsif(sel = "011") then
                output <= input(3);
            elsif(sel = "100") then
                output <= input(4);
            elsif(sel = "101") then
                output <= input(5);
            elsif(sel = "110") then
                output <= input(6);
            elsif(sel = "111") then
                output <= input(7);
            else
                output <= '0';
            end if;
        
        
    end process;

end Behavioral;
