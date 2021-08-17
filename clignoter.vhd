library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity clignoter is 
port(cntrl:in std_logic;
e1:in std_logic_vector(3 downto 0);
e2:in std_logic_vector(3 downto 0);
e3:in std_logic_vector(3 downto 0);
e4:in std_logic_vector(3 downto 0);
e5:in std_logic_vector(3 downto 0);
e6:in std_logic_vector(1 downto 0);
s1:out std_logic_vector(3 downto 0);
s2:out std_logic_vector(3 downto 0);
s3:out std_logic_vector(3 downto 0);
s4:out std_logic_vector(3 downto 0);
s5:out std_logic_vector(3 downto 0);
s6:out std_logic_vector(1 downto 0)
);
end clignoter;

architecture clignoter of clignoter is
begin 
process(cntrl)
begin 
if("0000"<=e1 and e1<="1001" and "0100"<=e2 and e2<="0101" and e3="1001" and e4="0101" and "0101"<=e5 and e5<="0110" and e6="01" and  cntrl='1') then 
s1<="1111";
s2<="1111";
s3<="1111";
s4<="1111";
s5<="1111";
s6<="11";
else
s1<=e1;
s2<=e2;
s3<=e3;
s4<=e4;
s5<=e5;
s6<=e6;

end if;
end process;
end clignoter; 

