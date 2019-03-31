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

entity problem2_if is
  Port (A, B : in std_logic_vector(1 downto 0);
        D: in std_logic;
        E_out : out std_logic);
end problem2_if;

architecture Behavioral of problem2_if is

    signal A_out, B_out, C_out : std_logic;       --intermediate signals

    begin
        process(A, B, D)          --Notice that for the entire circuit we use only ONE +process
              begin
                
              if((A(0) AND A(1)) = '1') then      ----A out. The beauty of VHDL is that it lets us skip trust tables. The system assumes we have an AND gate
                   A_out <= '1';
              else
                   A_out <= '0';
              end if;

              if((B(0) OR B(1)) = '1') then       --B_out
                    B_out <= '1';
              else
                    B_out <= '0';
              end if;

              if((B(1) AND (not D)) = '1') then     --C_out
                   C_out <= '1';
              else
                    C_out <= '0';
              end if;


              if((A_out OR B_out OR C_out) = '1') then      --E_out
                   E_out <= '1';
              else
                    E_out <= '0';
              end if;
        end process;
end Behavioral;
