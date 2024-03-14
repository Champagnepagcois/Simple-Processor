library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit_register is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_in : in STD_LOGIC;
           data_out : out STD_LOGIC);
end bit_register;

architecture Behavioral of bit_register is
    signal bit_value : STD_LOGIC := '0'; -- Valor inicial del bit
begin

    process(clk, reset)
    begin
        if reset = '1' then
            bit_value <= '0'; -- Resetea el bit a 0
        elsif rising_edge(clk) then
            if data_in = '1' then
                bit_value <= data_in; -- Guarda el valor de entrada si es 1
            end if;
        end if;
    end process;

    data_out <= bit_value; -- Envía el valor actual del bit al exterior

end Behavioral;