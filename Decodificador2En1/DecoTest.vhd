library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decodificador_2_a_4 is
    Port ( XX : in STD_LOGIC_VECTOR(1 downto 0);
           YY : in STD_LOGIC_VECTOR(1 downto 0);
           clk : in STD_LOGIC;
           EnableDecRinX : in STD_LOGIC;
           EnableDecRoutY : in STD_LOGIC;
           RinX : out STD_LOGIC_VECTOR(3 downto 0);
           RoutY : out STD_LOGIC_VECTOR(3 downto 0)
    );
end Decodificador_2_a_4;

architecture Behavioral of Decodificador_2_a_4 is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if EnableDecRinX = '1' then
                -- Lógica del decodificador RinX
                case XX is
                    when "00" =>
                        RinX <= "0001";
                    when "01" =>
                        RinX <= "0010";
                    when "10" =>
                        RinX <= "0100";
                    when "11" =>
                        RinX <= "1000";
                    when others =>
                        RinX <= "0000";
                end case;
            elsif EnableDecRinX = '0' then
                RinX <= "0000";
            end if;

            if EnableDecRoutY = '1' then
                -- Lógica del decodificador RoutY
                case YY is
                    when "00" =>
                        RoutY <= "0001";
                    when "01" =>
                        RoutY <= "0010";
                    when "10" =>
                        RoutY <= "0100";
                    when "11" =>
                        RoutY <= "1000";
                    when others =>
                        RoutY <= "0000";
                end case;
            elsif EnableDecRoutY = '0' then
                RoutY <= "0000";
            end if;
        end if;
    end process;
end Behavioral;

