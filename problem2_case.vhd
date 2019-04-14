--Remember that in this case we were not given HIGH or LOW volume for the ENTITY-INPUTS
-- So we will assume HIGH or LOW values
--Step 1: Combine the 1-bit inputs into a Bundle
--Step 2: Create proceses for the next level outputs.

--Remember that since we're working with circuit and not algorithmic logic, everything must have a multiplexer.



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
               A, B : in std_logic_vector(1 downto 0);
               D : in std_logic;
               E_out : out std_logic);
end circuit;

  
architecture Behavioral of circuit is

    signal A_out, B_out, C_out, D_out : std_logic;          --intermediate signals
    signal A_in, B_in, C_in : std_logic_vector(1 downto 0);
    signal E_in : std_logic_vector(2 downto 0);

    begin       --combines the indivual bits into a multiple-bit bundle, using the symbol "&"
    
        A_in <= A(0) & A(1);      --Here we save LOGIC COMBINATIONS of ENTITY-INPUTS into TEMPORARY-SIGNALS
        B_in <= B(0) & B(1);        --Here we give the gates a HIGH or LOW input
        --C_in <= B(1) &  (not D);       --We could simply skip the "D" GATE PROCESS, by negating the Original "D" Gate directly. (however this is not good VHDL programming)
        C_in <= B(1) &  (D_out);    --This is for the output of the "C" GATE. Remember "D" GATE has its own process
        E_in <= A_out & B_out & C_out;      
        
   
    -------------------------------------------------
       
        process(D)               --This is the process for the negated "D" GATE
            begin
                case(D) is       --This is whatever value we input into the ENTITY-GATE
                        when '0' => D_out <= '1';        --This creates the output of the "D" GATE by nagating it
                        when '1' => D_out <= '0';
                end case;
           end process;   
    ------------------------------------------------
        process(A_in) --For better programming, we split up the temporary-Signals. This is process "A". This is the input that Goes into "E"
            begin
                case(A_in) is
                        when "11" => A_out <= '1';      --Here it is saying that it is only TRUE when both inputs are "1". Which is the STANDARD-LOGIC of an AND-gate 
                        when others => A_out <= '0';
                end case;
        end process;
       
    ------------------------------------------------- 
        process(B_in)                 --Remember that for EXAMPLE, we had 1 process because we only had 3 gates, and we were given the "HIGHs" and "LOWs"
            begin
                case(B_in) is 
                        --when "11" | "01" | "10" => B_out <= '1';
                        when ("11" or "01" or "10") => B_out <= '1';          --This is Method#2. Here it declares a HIGH output for "B" GATE
                        when others => B_out <= '0';
                end case;
        end process;
        

    -------------------------------------------------
        process(C_in)           --process C
            begin
                case(C_in) is
                        when "11" => C_out <= '1';         --This just says that both inputs must be HIGH, for the output to be HIGH
                        when others => C_out <= '0';        --This just says anything else will give a "0" output
                end case;
        end process;

    -------------------------------------------------
    
        process(E_in)               --process E        
            begin
                case(E_in) is
                        when "111" | "110" | "100" | "011" | "001" => E_out <= '1';
                        when others => E_out <= '0';
                        --when "000" => E_out <= '0';       --This is method#2
                        --when others => E_out <= '1';      --This is part of Method#2
                end case;
        end process;



end Behavioral;
