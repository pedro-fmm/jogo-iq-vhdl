library ieee;
use ieee.std_logic_1164.all;

entity controle is
port(
	enter, reset, CLOCK: in std_logic;
	end_FPGA, end_game, end_time, end_round: in std_logic;
	R1, R2, E1, E2, E3, E4, E5: out std_logic
	);
end controle;

architecture rtl of controle is
    type STATES is (Init, Setup, Play_FPGA, Play_User, Result, Check, Count_Round, ewait);
    signal Eatual, Pestado: STATES;
    
begin
                        
    process(CLOCK, reset)
    begin
        if (reset = '1') then 
            Eatual <= Init;
        elsif (CLOCK'event and CLOCK = '1') then
            Eatual <= Pestado;
        end if;
    end process;
    
    process(Eatual, enter, end_game, end_FPGA, end_time, end_round) 
    begin
        case Eatual is
            when Init =>
                R1 <= '1';
                R2 <= '1';
                E1 <= '0';
                E2 <= '0';
                E3 <= '0';
                E4 <= '0';
                E5 <= '0';
                Pestado <= Setup;
            
            when Setup =>
                
                R1 <= '0';
                R2 <= '0';
                E1 <= '1';
                E2 <= '0';
                E3 <= '0';
                E4 <= '0';
                E5 <= '0';
                
                if (enter = '1') then
                    Pestado <= Play_FPGA;
                else
                    Pestado <= Setup;
                end if;
            
            when Play_FPGA =>
                
                R1 <= '0';
        		R2 <= '0';
        		E1 <= '0';
        		E2 <= '1';
        		E3 <= '0';
        		E4 <= '0';
        		E5 <= '0';
                    
                if (end_FPGA = '1') then
                    Pestado <= Play_User;
                else
                    Pestado <= Play_FPGA;
                end if;
            
            when Play_User =>
                
                R1 <= '0';
    		    R2 <= '0';
    		    E1 <= '0';
    		    E2 <= '0';
    		    E3 <= '1';
    		    E4 <= '0';
    		    E5 <= '0';
                
                if (enter = '1') then
                    Pestado <= Count_Round;
                elsif (end_time = '1') then
                    Pestado <= Result;
                end if;
    
            when Count_Round =>
                R1 <= '0';
                R2 <= '0'; 
    		    E1 <= '0';
    		    E2 <= '0';
    		    E3 <= '0';
    		    E4 <= '1';
    		    E5 <= '0';
                Pestado <= Check;
            
            when Check =>
    	        R1 <= '1';
                R2 <= '0';
    		    E1 <= '0';
    		    E2 <= '0';
    		    E3 <= '0';
    		    E4 <= '0';
    		    E5 <= '0';
                if (end_round = '0' and end_game = '0') then
                    Pestado <= ewait;
                elsif (end_round = '1' or end_game = '1') then
                    Pestado <= Result;
                end if;
                
            when ewait =>
    	        R1 <= '0';
                R2 <= '0';
    		    E1 <= '0';
    		    E2 <= '0';
    		    E3 <= '0';
    		    E4 <= '0';
    		    E5 <= '0';
                if (enter = '1') then
                    Pestado <= Play_FPGA;
                else
                    Pestado <= ewait;
                end if;
            
            when Result =>
    	        R1 <= '0';
                R2 <= '0';
    		    E1 <= '0';
    		    E2 <= '0';
    		    E3 <= '0';
    		    E4 <= '0';
    		    E5 <= '1';
                if (enter = '1') then
                    Pestado <= Init;
                else
                    Pestado <= Result;
                end if;
                
                     
        end case;
    end process;
end rtl;