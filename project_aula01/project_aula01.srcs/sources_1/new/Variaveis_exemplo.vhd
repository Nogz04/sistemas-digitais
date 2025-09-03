library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declara��o da entidade

entity variaveis_exemplo is
    port (
    
        clk : in STD_LOGIC; -- Sinal de Clock
        A   : in STD_LOGIC; -- Entrada
        B   : in STD_LOGIC; -- Entrada
        Y   : out STD_LOGIC -- Sa�da
    );
 end variaveis_exemplo;
 
 -- Arquitetura de circuito
 architecture Behavioral of variaveis_exemplo is 
 begin
    process (clk)
        -- Declara��o de vari�veis de diferentes tipos
        variable bit_var    : STD_LOGIC := '0'; -- Vari�vel do tipo STD_LOGIC
        variable int_var    : INTEGER := 10;    -- Vari�vel do tipo INTEGER
        variable real_var   : INTEGER := 3;   -- Vari�vel do tipo REAL, por�m usei INTEGER devido a vers�o
        variable vector_var : STD_LOGIC_VECTOR(3 downto 0) := "0000"; -- Vetor de 4 bits
        variable bool_var   : BOOLEAN   := TRUE;    -- Vari�vel do tipo Boolean
        variable time_var   : TIME := 10 ns;    -- Vari�vel do tipo TIME
     begin
        if rising_edge (clk) then
            -- La�o de controle FOR
            for i in 0 to 3 loop
                -- Estrutura condicional IF-ELSE
                if int_var  > 5 then
                    vector_var(i) := '1'; -- Atribui '1' � posi��o i do vetor
                    int_var := int_var -1; -- Decrementa a vari�vel inteira
                else
                    vector_var(i) := '0';   -- Caso contr�rio, atribui '0' � posi��o i do vetor
                    int_var := int_var + 1; -- Incrementa a vari�vel inteira
                end if;
            end loop;
            
            -- Exemplo de uso do booleano e da vari�vel do tipo REAL (porem devido a vers�o ela sera INTEGER)
            if bool_var = TRUE then
                real_var := real_var + 1; -- Incrementa o valor da vari�vel real (INTEGER)
                bool_var := FALSE;  -- Modifica a vari�vel booleana
            else
                real_var := real_var - 1; -- Decrementa o valor da vari�vel real (INTEGER)
                bool_var := TRUE;   -- Modifica a vari�vel booleana
            end if;
            
            -- Atribui��o de sa�da
            Y <= A AND B;   -- Simula��o de uma porca AND simples
         end if;
       end process;
  end Behavioral;