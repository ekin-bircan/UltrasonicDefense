library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hcsr_sensor is
Port ( clk: in STD_LOGIC;
   trig: out STD_LOGIC;
   echo: in STD_LOGIC;
   sensitivity: in STD_LOGIC_VECTOR(1 downto 0) := "00";
   detected: out STD_LOGIC
   );
end hcsr_sensor;

architecture Behavioral of hcsr_sensor is

signal cnt : unsigned(16 downto 0) := (others => '0');
signal centim: unsigned (15 downto 0) := (others => '0');
signal cm: unsigned (3 downto 0) := (others => '0');
signal centimd: unsigned(3 downto 0) := (others =>'0');
signal echo_prev: STD_LOGIC := '0';
signal echo_now: STD_LOGIC := '0';
signal echo_notnow: STD_LOGIC := '0';
signal hold: STD_LOGIC := '0';


begin
process(clk)
    begin
        if rising_edge(clk) then
        
            if hold = '0' then
                if cnt = 1000 then
                    trig <= '0';
                    hold <= '1';
                    cnt <= (others => '0');
                else
                    trig <= '1';
                    cnt <= cnt+1;
                end if;
            
            elsif echo_prev = '0' and echo_now = '1' then
                cnt <= (others => '0');
                centim <= (others => '0');
                cm <= (others => '0');
                centimd <= (others => '0');
               
            elsif echo_prev = '1' and echo_now = '0' then
                if sensitivity = "00" then
                    if centimd < "0001" then
                        detected <= '1';
                    else
                        detected <= '0';
                    end if;
                
                elsif sensitivity = "01" then
                    if  centimd < "0010" then
                        detected <= '1';
                    else
                        detected <= '0';
                    end if;
                    
                elsif sensitivity = "10" then
                    if centimd < "0011" then
                        detected <= '1';
                    else
                        detected <= '0';
                    end if;
                
                else
                    detected <= '0';
                end if;
           
           elsif cnt = 5799 then
                    
                if cm = 9 then
                   cm <= (others => '0');
                   centimd <= centimd + 1;
                else
                    cm <= cm + 1;
                end if;
                
                centim <= centim + 1;
                cnt <= (others => '0');
                
                if centim = 3448 then
                    hold <= '0';
                end if;
           else
                cnt <= cnt + 1;
           end if;
           
           echo_prev <= echo_now;
           echo_now <= echo_notnow;
           echo_notnow <= echo;
         end if;
     end process;
     
end Behavioral;
