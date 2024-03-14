library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador_y_decodificador is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           EnableDecRoutX : in STD_LOGIC;
           XX : in STD_LOGIC_VECTOR (1 downto 0);
           salida_contador : out STD_LOGIC_VECTOR(1 downto 0);
           RoutX : out STD_LOGIC_VECTOR (3 downto 0));
end contador_y_decodificador;

architecture Behavioral of contador_y_decodificador is
    signal cuenta_interna : STD_LOGIC_VECTOR(1 downto 0) := "00";
begin
    -- Proceso del contador
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                cuenta_interna <= "00";
            else
                if cuenta_interna = "11" then
                    cuenta_interna <= "00";
                else
                    cuenta_interna <= cuenta_interna + 1;
                end if;
            end if;
        end if;
    end process;
    
    -- Proceso del decodificador (fuera del proceso del contador)
    process (XX, EnableDecRoutX)
    begin
        if EnableDecRoutX = '1' then
            case XX is
                when "00" => RoutX <= "0001";
                when "01" => RoutX <= "0010";
                when "10" => RoutX <= "0100";
                when "11" => RoutX <= "1000";
                when others => RoutX <= "0000";
            end case;
        else
            RoutX <= "0000";
        end if;
    end process;
    
    salida_contador <= cuenta_interna;
end Behavioral;