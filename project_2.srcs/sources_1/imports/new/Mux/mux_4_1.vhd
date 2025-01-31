library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux_4_1 is
	port (
		selection : in std_logic_vector(1 downto 0);
		input_0, input_1, input_2, input_3 : in std_logic_vector(31 downto 0);
		output_0 : out std_logic_vector(31 downto 0)
	);
end mux_4_1;

architecture behavioral of mux_4_1 is
begin
	with selection select
		output_0 <=
		input_0 when "00",
		input_1 when "01",
		input_2 when "10",
		input_3 when "11",
		x"00000000" when others;
end behavioral;