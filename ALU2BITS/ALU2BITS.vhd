library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declaraci�n de la entidad
entity ALU is
    Port ( 
        A : in STD_LOGIC_VECTOR (1 downto 0);
        B : in STD_LOGIC_VECTOR (1 downto 0);
        Op : in STD_LOGIC; -- Operaci�n: '0' para suma, '1' para resta
        Result : out STD_LOGIC_VECTOR (1 downto 0);
        Carry : out STD_LOGIC
    );
end ALU;

-- Declaraci�n de la arquitectura
architecture Behavioral of ALU is
begin
    -- Proceso de la ALU
    ALU_process: process(A, B, Op)
    variable temp_result : STD_LOGIC_VECTOR (2 downto 0); -- Incluye bit de acarreo
    begin
        if Op = '0' then
            -- Suma con acarreo
            temp_result := ('0' & A) + ('0' & B);
            Result <= temp_result(1 downto 0);
            Carry <= temp_result(2); -- Acarreo de la suma
        else
            -- Resta con pr�stamo
            temp_result := ('0' & A) - ('0' & B);
            Result <= temp_result(1 downto 0);
            Carry <= temp_result(2); -- Pr�stamo de la resta
        end if;
    end process ALU_process;

end Behavioral;