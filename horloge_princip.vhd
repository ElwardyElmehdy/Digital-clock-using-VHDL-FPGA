library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity compteur4bit is 
port(clk:in std_logic;
rst:in std_logic;
reglage:in std_logic;
e1:in std_logic_vector(3 downto 0);
e2:in std_logic_vector(3 downto 0);
e3:in std_logic_vector(3 downto 0);
e4:in std_logic_vector(3 downto 0);
e5:in std_logic_vector(3 downto 0);
e6:in std_logic_vector(1 downto 0);
Q1:out std_logic_vector(3 downto 0);
Q2:out std_logic_vector(3 downto 0);
Q3:out std_logic_vector(3 downto 0);
Q4:out std_logic_vector(3 downto 0);
Q5:out std_logic_vector(3 downto 0);
Q6:out std_logic_vector(1 downto 0)
);
end compteur4bit;

architecture compteur4bit of compteur4bit is 
signal count1:std_logic_vector(3 downto 0);
signal count2:std_logic_vector(3 downto 0);
signal count3:std_logic_vector(3 downto 0);
signal count4:std_logic_vector(3 downto 0);
signal count5:std_logic_vector(3 downto 0);
signal count6:std_logic_vector(1 downto 0);



begin 

process(clk,rst,reglage)
begin
if(reglage='1') then 
count1<=e1;
count2<=e2;
count3<=e3;
count4<=e4;
count5<=e5;
count6<=e6;
elsif (rst='1') then
count1<="0000";
count2<="0000";
count3<="0000";
count4<="0000";
count5<="0000";
count6<="00";




elsif(clk'event and clk='1') then 
count1<=count1+1;

if(count1="1001") then

 count1<="0000";
 count2<=count2+1;
 
 if(count2="0101") then
 count2<="0000";
 count3<=count3+1;
 
 if(count3="1001") then
 count3<="0000";
 count4<=count4+1;
 
 if(count4="0101") then
 count4<="0000";
 count5<=count5+1;
 
 if(count5="0011" and count6="10" ) then
 count5<="0000";
 count6<="00";
 elsif (count5="1001") then 
 count5<="0000";
 count6<=count6+1;
 
 
end if;
end if;
end if;
end if;
end if;
end if;


end process;



--********************************************************



--*******************************************************


Q1<=count1;
Q2<=count2;
Q3<=count3;
Q4<=count4;
Q5<=count5;
Q6<=count6;
end compteur4bit;

