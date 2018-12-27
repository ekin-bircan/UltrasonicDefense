library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity project_topm is
Port ( top_clk: in STD_LOGIC;
       hc_trig: out STD_LOGIC;
       hc_echo: in STD_LOGIC;
       range_sel: in STD_LOGIC_VECTOR(1 downto 0);
       eliminate_pwm: out STD_LOGIC;
       detect_pwm: out STD_LOGIC;
       target_lock: inout STD_LOGIC
         );
end project_topm;

architecture Behavioral of project_topm is

component hcsr_sensor
    Port ( clk: in STD_LOGIC;
        trig: out STD_LOGIC;
        echo: in STD_LOGIC;
        sensitivity: in STD_LOGIC_VECTOR(1 downto 0) := "00";
        detected: out STD_LOGIC );
   end component;
   
component servo_ctrl
    Port( clk : in STD_LOGIC;
      stop : in STD_LOGIC;
      pwm : out std_logic;
      lock: out std_logic);
    end component;

begin
C1: hcsr_sensor PORT MAP ( clk => top_clk, trig => hc_trig, echo => hc_echo, sensitivity => range_sel, detected => target_lock); 
C2: servo_ctrl PORT MAP ( clk => top_clk, pwm => detect_pwm, lock => eliminate_pwm, stop => target_lock);
end Behavioral;
