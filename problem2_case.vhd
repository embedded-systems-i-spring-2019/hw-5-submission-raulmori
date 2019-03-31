

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem2_case is
      Port ( 
               A, B : in std_logic_vector(1 downto 0);
               D : in std_logic;
               E_out : out std_logic);
end problem2_case;

  
architecture Behavioral of problem2_case is

    signal A_out, B_out, C_out, D_out : std_logic;          --intermediate signals
    signal A_in, B_in, C_in : std_logic_vector(1 downto 0);
    signal E_in : std_logic_vector(2 downto 0);

    begin

    A_in <= A(0) & A(1);      --group signals
    B_in <= B(0) & B(1);
    C_in <= B(1) & D_out;
    E_in <= A_out & B_out & C_out;
------------------------------------------------
    process(A_in) --process A
        begin
            case(A_in) is
            when "11" => A_out <= '1';
            when others => A_out <= '0';
            end case;
    end process;
   
------------------------------------------------- 
    process(B_in)                 --process B
        begin
            case(B_in) is 
            when "11" | "01" | "10" => B_out <= '1';
            when others => B_out <= '0';
            end case;
    end process;
-------------------------------------------------
    process(C_in)           --process C
        begin
            case(C_in) is
            when "11" => C_out <= '1';
            when others => C_out <= '0';
            end case;
    end process;
-------------------------------------------------

    process(D)               --process D
        begin
            case(D) is
            when '0' => D_out <= '1';
            when '1' => D_out <= '0';
            end case;
       end process;
-------------------------------------------------

    process(E_in)               --process E        
        begin
            case(E_in) is
            when "000" => E_out <= '0';
            when others => E_out <= '1';
            end case;
    end process;



end Behavioral;
