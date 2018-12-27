    library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;
    
    entity servo_ctrl is
    
    Generic(
    count_max : integer := 2000000; --50 Hz clock for SG-90
    duty_max : integer := 240000; -- 2 ms duty cycle for +90 degree
    duty_min : integer := 60000; -- 1 ms duty cycle for -90 degree
    duty_delta : integer := 500 
    );
   
    Port( clk : in STD_LOGIC;
          stop : in STD_LOGIC;
          pwm : out std_logic;
          lock: out std_logic:= '0');
    end servo_ctrl;
    
    architecture Behavioral of servo_ctrl is
    
    signal counter_detect: integer range 0 to count_max := 0;
    signal counter_eliminate: integer range 0 to count_max :=0;
    signal duty : integer range duty_min to duty_max := duty_min;
    signal lastpos: integer := 0;
    
    begin
    rotation_controller: process(all)
    
    variable positive_rotate : boolean := true;
    begin 
    if rising_edge(clk) then
   
      if counter_detect < count_max and counter_eliminate < count_max then
      counter_detect <= counter_detect + 1;
      counter_eliminate <= counter_eliminate +1;
      else 
         if positive_rotate then
           if duty < duty_max and stop ='0' then
            duty <= duty + duty_delta;
           else
            positive_rotate := false;
           end if;  
         else
           if duty > duty_min and stop = '0' then
            duty <= duty - duty_delta;
           else
            positive_rotate := true;
           end if;
        end if;
       counter_detect <= 0;
       counter_eliminate <= 0;
      end if;
     end if;
   end process;
    
    pwm_generator: process(all)
    begin
    
      if counter_detect < duty and stop = '0' then
       pwm <= '1';
      else
       pwm <= '0';
      end if;
      
     if counter_eliminate < (duty_max+duty_min)/2 and stop = '0' then
        lock<= '1';
      else
        lock <= '0';
      end if;
      
     if counter_eliminate < duty and stop = '1' then
        lock<= '1';
     else
        lock <= '0';
     end if;
     
    end process;
    end Behavioral;