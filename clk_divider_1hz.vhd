library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clkdivider is 
port (clk:in std_logic;
clk_div:out std_logic);
end clkdivider;

architecture clkdivider of clkdivider is 
signal count :integer :=1;
signal div :std_logic;
begin 
process(clk)
begin 
if(clk'event and clk='1') then
 count<=count+1;
if(count=25000000) then 
div<=not div;
count<=1;
end if;
end if;
end process;
clk_div<=div;
end clkdivider;