--Notice in here that we were given a special type of ENTITY-INPUT. 
--For the "A" part, we will assume a HIGH (1) and LOW (0) inputs.
--For the "B" part, we will assume a HIGH (1) and LOW (0) inputs.
--Notice that for "D" we don't assume High or LOW, but we use a variable compliment

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
  Port (A, B : in std_logic_vector(1 downto 0);  --These inputs are multiple bits
        D: in std_logic;
        E_out : out std_logic);     --The output is only 1 bit
end circuit;

architecture Behavioral of circuit is

    signal A_out, B_out, C_out : std_logic;       --Notice here that we create 3 different temporary signals
    
    begin               --Notice that for the entire circuit we use only ONE +process
        process(A, B, D)          --Notice here that we declare the three inputs for the process
              begin         --For this specific problem we have FOUR logic combinations
                
              if((A(0) AND A(1)) = '1') then      --Notice here that we call the Enitity-inputs.
                   A_out <= '1';            --Notice here that we are calling the temporary-signal
              else
                   A_out <= '0';
              end if;

              if((B(0) OR B(1)) = '1') then       --This is the second logic combination. B_out
                    B_out <= '1';
              else
                    B_out <= '0';
              end if;

              if((B(1) AND (not D)) = '1') then     --This is the third logic combination. C_out
                   C_out <= '1';
              else
                    C_out <= '0';
              end if;


              if((A_out OR B_out OR C_out) = '1') then      --.This is the Last logic combination. E_out
                   E_out <= '1';
              else
                    E_out <= '0';
              end if;
        end process;
end Behavioral;
