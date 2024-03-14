library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declaración de la entidad
entity FourTwoBitRegisters is
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        write_enable_1, write_enable_2, write_enable_3, write_enable_4 : in STD_LOGIC;
        data_in : in STD_LOGIC_VECTOR (1 downto 0);
        read_enable_1, read_enable_2, read_enable_3, read_enable_4 : in STD_LOGIC;
        data_out_1, data_out_2, data_out_3, data_out_4 : out STD_LOGIC_VECTOR (1 downto 0)
    );
end FourTwoBitRegisters;

-- Declaración de la arquitectura
architecture Behavioral of FourTwoBitRegisters is
    signal reg_1, reg_2, reg_3, reg_4 : STD_LOGIC_VECTOR (1 downto 0) := "00";
begin
    -- Proceso de escritura para el registro 1
    process(clk, reset)
    begin
        if reset = '1' then
            reg_1 <= "00"; -- Reset del registro 1
        elsif rising_edge(clk) then
            if write_enable_1 = '1' then
                reg_1 <= data_in; -- Escritura en el registro 1
            end if;
        end if;
    end process;

    -- Proceso de lectura para el registro 1
    process(read_enable_1, reg_1)
    begin
        if read_enable_1 = '1' then
            data_out_1 <= reg_1; -- Lectura del registro 1
        else
            data_out_1 <= "ZZ"; -- Alta impedancia si no se lee
        end if;
    end process;

    -- Proceso de escritura para el registro 2
    process(clk, reset)
    begin
        if reset = '1' then
            reg_2 <= "00"; -- Reset del registro 2
        elsif rising_edge(clk) then
            if write_enable_2 = '1' then
                reg_2 <= data_in; -- Escritura en el registro 2
            end if;
        end if;
    end process;

    -- Proceso de lectura para el registro 2
    process(read_enable_2, reg_2)
    begin
        if read_enable_2 = '1' then
            data_out_2 <= reg_2; -- Lectura del registro 2
        else
            data_out_2 <= "ZZ"; -- Alta impedancia si no se lee
        end if;
    end process;

    -- Proceso de escritura para el registro 3
    process(clk, reset)
    begin
        if reset = '1' then
            reg_3 <= "00"; -- Reset del registro 3
        elsif rising_edge(clk) then
            if write_enable_3 = '1' then
                reg_3 <= data_in; -- Escritura en el registro 3
            end if;
        end if;
    end process;

    -- Proceso de lectura para el registro 3
    process(read_enable_3, reg_3)
    begin
        if read_enable_3 = '1' then
            data_out_3 <= reg_3; -- Lectura del registro 3
        else
            data_out_3 <= "ZZ"; -- Alta impedancia si no se lee
        end if;
    end process;

    -- Proceso de escritura para el registro 4
    process(clk, reset)
    begin
        if reset = '1' then
            reg_4 <= "00"; -- Reset del registro 4
        elsif rising_edge(clk) then
            if write_enable_4 = '1' then
                reg_4 <= data_in; -- Escritura en el registro 4
            end if;
        end if;
    end process;

    -- Proceso de lectura para el registro 4
    process(read_enable_4, reg_4)
    begin
        if read_enable_4 = '1' then
            data_out_4 <= reg_4; -- Lectura del registro 4
        else
            data_out_4 <= "ZZ"; -- Alta impedancia si no se lee
        end if;
    end process;

end Behavioral;
