library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration
entity TwoTwoBitRegisters is
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        write_enable_1, write_enable_2 : in STD_LOGIC;
        data_in_1, data_in_2 : in STD_LOGIC_VECTOR (1 downto 0);
        dataEx_in : in STD_LOGIC_VECTOR (1 downto 0);
		extern  : in STD_LOGIC;
		dataEx_out : out STD_LOGIC_VECTOR (1 downto 0);
        read_enable_1, read_enable_2 : in STD_LOGIC;
        data_out_1, data_out_2 : out STD_LOGIC_VECTOR (1 downto 0)
    );
end TwoTwoBitRegisters;

-- Architecture declaration
architecture Behavioral of TwoTwoBitRegisters is
    signal reg_1, reg_2 : STD_LOGIC_VECTOR (1 downto 0) := "00";
begin
    -- Process for the first register
    process(clk, reset)
    begin
        if reset = '1' then
            reg_1 <= "00"; -- Reset the first register
        elsif rising_edge(clk) then
            if write_enable_1 = '1' then
                reg_1 <= data_in_1; -- Write to the first register
            end if;
        end if;
    end process;

	process(extern,dataEx_in)
    begin
        if extern = '1' then
            dataEx_out <= dataEx_in; -- Reset the first register
        else 
			dataEx_out <= "ZZ"; -- High impedance if not read
        end if;
    end process;

    -- Process for reading from the first register
    process(read_enable_1, reg_1)
    begin
        if read_enable_1 = '1' then
            data_out_1 <= reg_1; -- Read from the first register
        else
            data_out_1 <= "ZZ"; -- High impedance if not read
        end if;
    end process;

    -- Process for the second register
    process(clk, reset)
    begin
        if reset = '1' then
            reg_2 <= "00"; -- Reset the second register
        elsif rising_edge(clk) then
            if write_enable_2 = '1' then
                reg_2 <= data_in_2; -- Write to the second register
            end if;
        end if;
    end process;

    -- Process for reading from the second register
    process(read_enable_2, reg_2)
    begin
        if read_enable_2 = '1' then
            data_out_2 <= reg_2; -- Read from the second register
        else
            data_out_2 <= "ZZ"; -- High impedance if not read
        end if;
    end process;

end Behavioral;
