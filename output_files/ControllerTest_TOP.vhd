

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

ENTITY ControllerTest_TOP IS
    PORT(
        lcd_busy : IN STD_LOGIC; --lcd controller busy/idle feedback
        clk : IN STD_LOGIC; --system clock 
        lcd_data_in : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        --lcd_clk : OUT STD_LOGIC;
        reset_n : OUT STD_LOGIC;
        lcd_enable : buffer STD_LOGIC; --lcd enable received from
        --lcd controller
        lcd_bus : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)); --data and
    --control signals
    --The MSB is the rs signal, followed by the rw signal.
    -- The other 8 bits are the data bits.
END ControllerTest_TOP;

ARCHITECTURE behavior OF ControllerTest_TOP IS
    
    signal   to_lcd : std_logic_vector(7 downto 0);
    signal   start_transmission : std_logic := '0';
    constant ip_addr   : std_logic_vector(31 downto 0) := X"FFA8010A";
    
    
    function binbcd4(SW : STD_LOGIC_VECTOR; N : integer) return std_logic_vector is
        
        variable z: STD_LOGIC_VECTOR (N*2+N/4 downto 0);
        variable k: integer := 0;
        variable temp : std_logic_vector(N+N/4 downto 0);
        
    begin
        for i in 0 to N*2+N/4 loop 
            z(i) := '0';            	                     		
        end loop;
        --k := integer(log10(real(to_integer(unsigned(SW)))));
        k := 2;
        z(N+2 downto 3) := SW;
        for i in 0 to N-4 loop 
            for j in 0 to k-1 loop	 
                if z(N+3 + 4*j downto N + 4*j) > 4 then
                    z(N+3 + 4*j downto N + 4*j) := z(N+3 + 4*j downto N + 4*j) + 3; 
                end if;
            end loop;
            z(2*N+N/4 downto 1) := z(2*N + N/8 downto 0);     
        end loop; 
        temp := z(2*N+N/4 downto N);
        return ('0' & temp);
    end function;
    
    
BEGIN
    
    PROCESS(clk)
        VARIABLE char : INTEGER RANGE 0 TO 17 := 0;
        VARIABLE lcd_data_in_int : INTEGER RANGE 0 TO 20 := 0;
        VARIABLE first_number : INTEGER RANGE 0 TO 1 := 0;
    BEGIN
        IF(rising_edge(clk)) THEN
            IF(lcd_busy = '0' AND lcd_enable = '0') THEN
                lcd_enable <= '1';
                IF(char < 16) THEN
                    if first_number = 0 then
                        first_number := 1;
                        lcd_bus <= (others => '0');
                    else    
                        lcd_data_in_int := to_integer(unsigned(to_lcd));
                        
                        CASE lcd_data_in_int IS
                            WHEN 0 => lcd_bus <= "1000110000";
                            WHEN 1 => lcd_bus <= "1000110001";
                            WHEN 2 => lcd_bus <= "1000110010";
                            WHEN 3 => lcd_bus <= "1000110011";
                            WHEN 4 => lcd_bus <= "1000110100";
                            WHEN 5 => lcd_bus <= "1000110101";
                            WHEN 6 => lcd_bus <= "1000110110";
                            WHEN 7 => lcd_bus <= "1000110111";
                            WHEN 8 => lcd_bus <= "1000111000";
                            WHEN 9 => lcd_bus <= "1000111001";
                            WHEN 10 => lcd_bus<= "1000101110"; --"."
                            WHEN 11 => lcd_bus<= "1000111010"; --":"
                            WHEN OTHERS => lcd_enable <= '0'; 
                        END CASE;
                        char := char + 1;
                    end if;
                ELSE
                    lcd_enable <= '0'; 
                    char := 0; -- for loop on lcd (comment if you need 1 use lcd )
                END IF;
            ELSE
                lcd_enable <= '0';
            END IF;
        END IF;
    END PROCESS; 
    
    process(clk)
        variable temp_ip : std_logic_vector(7 downto 0) := X"00";
        variable cnt : integer := 0;
        variable bindec : std_logic_vector(11 downto 0) := (others => '0');
        variable div_freq_lcd : natural := 0;
        variable send_flag : integer := 0;
        variable j : integer := 0;
        variable k : integer := 0;
    begin
        if (rising_edge(clk)) then
            
            if (send_flag = 0 and lcd_busy = '0')  then       --and lcd_busy = '0'
                --temp_ip := ip_addr(7 + cnt downto 0 + cnt);
                temp_ip := lcd_data_in(7 + cnt downto 0 + cnt);
                bindec := binbcd4(temp_ip, 8);
                --div_freq := 0;
                cnt := cnt + 8;
                send_flag := 1;
                div_freq_lcd := 0;
            end if;
            if cnt = 32 then
                cnt := 0;
            end if;
            if (div_freq_lcd > 2500 and send_flag = 1) then 
                if j = 3 then
                    to_lcd <= X"0A"; --send point   
                else
                    to_lcd <= X"0" & bindec(3 + 4*j downto 0 + 4*j);  --send 3 numbers of ip (192 for example)
                end if;
                div_freq_lcd := 0;
                j := j + 1;
            elsif (j = 4) then
                if k = 3 then
                    to_lcd <= X"0F";
                    k := 0;
                else
                    k := k + 1;
                end if;
                
                j := 0;
                send_flag := 0;
            end if;
            div_freq_lcd := div_freq_lcd + 1;
        end if;
        
        
    end process;    
    
    
    reset_n <= '1';
END behavior;