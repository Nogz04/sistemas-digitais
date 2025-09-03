library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declaração da entidade

entity variaveis_exemplo is
    port (
    
        clk : in STD_LOGIC; -- Sinal de Clock
        A   : in STD_LOGIC; -- Entrada
        B   : in STD_LOGIC; -- Entrada
        Y   : out STD_LOGIC -- Saída
    );
 end variaveis_exemplo;
 
 -- Arquitetura de circuito
 architecture Behavioral of variaveis_exemplo is 
 begin
    process (clk)
        -- Declaração de variáveis de diferentes tipos
        variable bit_var    : STD_LOGIC := '0'; -- Variável do tipo STD_LOGIC
        variable int_var    : INTEGER := 10;    -- Variável do tipo INTEGER
        variable real_var   : INTEGER := 3;   -- Variável do tipo REAL, porém usei INTEGER devido a versão
        variable vector_var : STD_LOGIC_VECTOR(3 downto 0) := "0000"; -- Vetor de 4 bits
        variable bool_var   : BOOLEAN   := TRUE;    -- Variável do tipo Boolean
        variable time_var   : TIME := 10 ns;    -- Variável do tipo TIME
     begin
        if rising_edge (clk) then
            -- Laço de controle FOR
            for i in 0 to 3 loop
                -- Estrutura condicional IF-ELSE
                if int_var  > 5 then
                    vector_var(i) := '1'; -- Atribui '1' à posição i do vetor
                    int_var := int_var -1; -- Decrementa a variável inteira
                else
                    vector_var(i) := '0';   -- Caso contrário, atribui '0' à posição i do vetor
                    int_var := int_var + 1; -- Incrementa a variável inteira
                end if;
            end loop;
            
            -- Exemplo de uso do booleano e da variável do tipo REAL (porem devido a versão ela sera INTEGER)
            if bool_var = TRUE then
                real_var := real_var + 1; -- Incrementa o valor da variável real (INTEGER)
                bool_var := FALSE;  -- Modifica a variável booleana
            else
                real_var := real_var - 1; -- Decrementa o valor da variável real (INTEGER)
                bool_var := TRUE;   -- Modifica a variável booleana
            end if;
            
            -- Atribuição de saída
            Y <= A AND B;   -- Simulação de uma porca AND simples
         end if;
       end process;
  end Behavioral;