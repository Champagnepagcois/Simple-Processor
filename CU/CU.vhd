library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CU is
    Port (
        I : in STD_LOGIC_VECTOR(1 downto 0);
        T : in STD_LOGIC_VECTOR(1 downto 0);
        clk : in STD_LOGIC;
        Extern : out STD_LOGIC;
        Gin : out STD_LOGIC;
        AddSub : out STD_LOGIC;
        Gout : out STD_LOGIC;
        Ain : out STD_LOGIC;
        EnableDecRinXAndDone : out STD_LOGIC;
        EnableDecROutX : out STD_LOGIC;
        EnableDecROutY : out STD_LOGIC
    );
end CU;

architecture Behavioral of CU is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if T="01" and I= "00" then
                  Extern <= '1';
                  EnableDecRinXAndDone <= '1';
                  EnableDecROutX <= '0';
                  EnableDecROutY <= '0';
                  Ain <= '0';
                  Gin <= '0';
                  Gout <= '0';
                elsif T="01" and I="01" then
                  EnableDecRinXAndDone <= '1';
                  EnableDecROutY <= '1';
                  EnableDecROutX <= '0';
                  Extern <= '0';
                  Gin <= '0';
                  Gout <= '0';
                  Ain <= '0';
                elsif T="01" and I="10" then
                    EnableDecROutX <= '1';
                    Ain <= '1';
                    EnableDecRinXAndDone <= '0';
                    EnableDecROutY <= '0';
                    Extern <= '0';
                    Gin <= '0';
                    Gout <= '0';
                elsif T="10" and I="10" then
                    EnableDecROutY <= '1';
                    Gin <= '1';
                    AddSub <= '0';
                    EnableDecRinXAndDone <= '0';
                    EnableDecROutX <= '0';
                    Gout <= '0';
                    Ain <= '0';
                elsif T="11" and I="10" then
                    Gout <= '1';
                    EnableDecRinXAndDone <= '1';
                    Extern <= '0';
                    Ain <= '0';
                    Gin <= '0';
                    EnableDecROutX <= '0';
                    EnableDecROutY <= '0';
                elsif T="01" and I="11" then
                    EnableDecROutX <= '1';
                    Ain <= '1';
                    EnableDecRinXAndDone <= '0';
                    EnableDecROutY <= '0';
                    Gin <= '0';
                    Gout <= '0';
                    Extern <= '0';
                elsif T="10" and I="11" then
                    EnableDecROutY <= '1';
                    Gin <= '1';
                    AddSub <= '1';
                    EnableDecRinXAndDone <= '0';
                    EnableDecROutX <= '0';
                    Gout <= '0';
                    Extern <= '0';
					Ain <= '0';
                elsif T="11" and I="11" then
                    Gout <= '1';
                    EnableDecRinXAndDone <= '1';
                    EnableDecROutX <= '0';
                    EnableDecROutY <= '0';
                    Gin <= '0';
                    Extern <= '0';
                    Ain <= '0';
					AddSub <= '0';
                else
                    EnableDecRinXAndDone <= '0';
                    EnableDecROutX <= '0';
                    EnableDecROutY <= '0';
                    Extern <= '0';
                    Gin <= '0';
                    Gout <= '0';
                    Ain <= '0';
            end if;
        end if;
    end process;
end Behavioral;
