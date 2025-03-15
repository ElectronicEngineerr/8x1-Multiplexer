library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Multiplexer is
  Port ( 
			D_in        : in std_logic_vector(7 downto 0);
			select_in 	: in std_logic_vector(2 downto 0);
			F_out 		: out std_logic
  );
end Multiplexer;

architecture Behavioral of Multiplexer is


begin

			F_out <= D_in(0) when select_in = "000" else
					 D_in(1) when select_in = "001" else
					 D_in(2) when select_in = "010" else
					 D_in(3) when select_in = "011" else
					 D_in(4) when select_in = "100" else
					 D_in(5) when select_in = "101" else
					 D_in(6) when select_in = "110" else
					 D_in(7) when select_in = "111" else
					 '0';
 

end Behavioral;
