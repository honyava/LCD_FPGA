library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity lcd_test_tb is
end lcd_test_tb;
architecture tb of lcd_test_tb is
constant CLK_FREQ : integer := 50e6;
constant CLK_PERIOD : time := 1 sec/ CLK_FREQ;

signal  clk_tb          :   std_logic := '1';
signal  lcd_data_in_tb  :   std_logic_vector(31 downto 0) := (others => '0');
signal  e_tb            :   std_logic;
signal  rs_tb           :   std_logic;
signal  rw_tb           :   std_logic;
signal  lcd_data_tb     :   std_logic_vector(7 downto 0);
signal  lcd_on_tb       :   std_logic;
signal  lcd_blon_tb     :   std_logic;

begin 
    clk_tb <= not clk_tb after clk_period / 2;
    
    lcd_test: entity work.lcd_test
        port map( 
        clk          => clk_tb,        
        lcd_data_in  => lcd_data_in_tb,
        e            => e_tb,          
        rs           => rs_tb,         
        rw           => rw_tb,         
        lcd_data     => lcd_data_tb,   
        lcd_on       => lcd_on_tb,     
        lcd_blon     => lcd_blon_tb   
        );
        sim : process 
        variable cnt : integer range 0 to 15;
        begin
            lcd_data_in_tb <= (others => '0');
            wait for 65 ms;
            lcd_data_in_tb <= X"691AEF01";
            wait for 5 ms;
            lcd_data_in_tb <= X"0AFF010C";
            wait for 5 ms;
            lcd_data_in_tb <= X"0CCDEF0C";
            wait for 5 ms;
            lcd_data_in_tb <= X"92FF010C";
            wait for 5 ms;
            lcd_data_in_tb <= X"11CDEF11";
            wait for 5 ms;
            lcd_data_in_tb <= X"11101101";
            wait for 5 ms;
            
            
            std.env.finish;
        end process sim;
end tb;
        