library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_multiplexer is
end tb_multiplexer;

architecture Behavioral of tb_multiplexer is

component Multiplexer is
  Port ( 
      D_in        : in std_logic_vector(7 downto 0);
      select_in   : in std_logic_vector(2 downto 0);
      F_out       : out std_logic
  );
end component;

signal D_in        : std_logic_vector(7 downto 0) := (others => '0');
signal select_in   : std_logic_vector(2 downto 0) := (others => '0');
signal F_out       : std_logic;

begin

    -- DUT (Device Under Test) Instance
    DUT : Multiplexer
          port map(
              D_in => D_in,
              select_in => select_in,
              F_out => F_out
          );

    -- TEST SÜRECİ
    stimulus_process : process
    begin
        -- İlk giriş değeri
        D_in <= "11001100";
        wait for 100 ns;

        -- Farklı select değerleri test ediliyor
        select_in <= "000";  
        wait for 10 ns;
        select_in <= "001";
        wait for 10 ns;
        select_in <= "010";
        wait for 10 ns;
        select_in <= "011";
        wait for 10 ns;
        select_in <= "111";
        wait for 10 ns;

        -- Simülasyonu durdur
        wait;
    end process;

end Behavioral;
