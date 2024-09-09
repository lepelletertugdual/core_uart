-- ######################################################################################################################################################################################################
-- file :
--     gen_heartbeat_wrapper_zedboard.vhd
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- objective :
--     gen_heartbeat.vhd simulation wrapper for ZedBoard evaluation board manufactured by Digilent.
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- level of description :
--     register tranfer level (RTL)
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- author :
--     Tugdual LE PELLETER
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- history :
--     2023-11-11
--         file creation
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- table of contents :
--     01.00. libraries
--     02.00. entity
--     03.00. architecture
--         03.01. components declaration
--             03.01.01. ip_pll
--             03.01.02. gen_heartbeat
--         03.02. signals
--             03.02.01. ip_pll
--             03.02.02. gen_heartbeat
--         03.03. input assignment
--         03.04. components instanciation
--             03.04.01. ip_pll
--             03.04.02. gen_heartbeat
--         03.05. output assignment
-- ######################################################################################################################################################################################################

-- ######################################################################################################################################################################################################
-- 01. libraries
-- ######################################################################################################################################################################################################
    -- ==================================================================================================================================================================================================
	-- 03.01. standard
    -- ==================================================================================================================================================================================================
    library ieee;
        use ieee.std_logic_1164.all;
	
	-- ==================================================================================================================================================================================================
	-- 03.01. custom
    -- ==================================================================================================================================================================================================
    library work;
        use work.pkg_core_uart_wrapper_zedboard.all;
	
-- ######################################################################################################################################################################################################
-- 02. entity
-- ######################################################################################################################################################################################################

entity core_uart_wrapper_zedboard is
    port (
	     OSC_100M : in  std_logic
		;BTN9     : in  std_logic -- pin C10 : s_rst
		;BTN8     : in  std_logic -- pin D13 : s_dut_tx_data_en
		;SW0      : in  std_logic -- pin F22 : s_dut_tx_data[0]
		;SW1      : in  std_logic -- pin G22 : s_dut_tx_data[1]
		;SW2      : in  std_logic -- pin H22 : s_dut_tx_data[2]
		;SW3      : in  std_logic -- pin F21 : s_dut_tx_data[3]
		;SW4      : in  std_logic -- pin H19 : s_dut_tx_data[4]
		;SW5      : in  std_logic -- pin H18 : s_dut_tx_data[5]
		;SW6      : in  std_logic -- pin H17 : s_dut_tx_data[6]
		;SW7      : in  std_logic -- pin M15 : s_dut_tx_data[7]
		;LD0      : out std_logic -- pin T22 : s_dut_tx_ready
		;LD1      : out std_logic -- pin T21 : s_dut_tx_done
		;LD2      : out std_logic -- pin U22 : s_dut_tx_error
		;LD3      : out std_logic -- pin U21 : s_dut_rx_ready
		;LD4      : out std_logic -- pin V22 : s_dut_rx_done
		;LD5      : out std_logic -- pin W22 : s_dut_rx_error
		;LD6      : out std_logic -- pin U19 : s_ip_mmcm_locked
		;LD7      : out std_logic -- pin U14 : s_gen_heartbeat_alive
		;UART_TX  : out std_logic -- pin D11 : s_dut_tx_line
		;UART_RX  : in  std_logic -- pin C14 : s_dut_rx_line

	);
end entity core_uart_wrapper_zedboard;

-- ######################################################################################################################################################################################################
-- 03. architecture
-- ######################################################################################################################################################################################################

architecture schematic of core_uart_wrapper_zedboard is

    -- ==================================================================================================================================================================================================
	-- 03.01. components declaration
    -- ==================================================================================================================================================================================================
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.01.01. ip_mmcm
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        component ip_mmcm is
            port (
	             clk_in1  : in  std_logic
		        ;reset    : in  std_logic
				;locked   : out std_logic
				;clk_out1 : out std_logic
	        );
        end component ip_mmcm;
		
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.01.02. gen_heartbeat
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        component gen_heartbeat is
            generic (
	             g_clk_i_freq : integer
		        ;g_clk_o_freq : integer
	        );
            port (
	             i_clk   : in  std_logic
		        ;i_rst   : in  std_logic
		        ;o_alive : out std_logic
				;o_error : out std_logic_vector(7 downto 0)
	        );
        end component gen_heartbeat;
		
	    -- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.01.01. DUT : core_uart
	    -- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        component core_uart is
            generic (
	         g_clk_i_freq  : integer := 100_000_000
		    ;g_baud        : integer :=     115_200
		    ;g_data_length : integer :=           8
	    );
        port (
	         i_clk        : in  std_logic                                  
		    ;i_rst        : in  std_logic                                  
		    ;i_tx_data_en : in  std_logic                                 
		    ;i_tx_data    : in  std_logic_vector(g_data_length-1 downto 0)
		    ;o_tx_ready   : out std_logic                                 
		    ;o_tx_done    : out std_logic                                 
		    ;o_tx_line    : out std_logic                                 
		    ;o_tx_error   : out std_logic_vector(7 downto 0)              
		    ;o_rx_data_en : out std_logic                                 
		    ;o_rx_data    : out std_logic_vector(g_data_length-1 downto 0)
		    ;o_rx_ready   : out std_logic                                 
		    ;o_rx_done    : out std_logic                                 
		    ;i_rx_line    : in  std_logic                                 
		    ;o_rx_error   : out std_logic_vector(7 downto 0)              
	    );
        end component core_uart;

    -- ==================================================================================================================================================================================================
	-- 03.02. signals
    -- ==================================================================================================================================================================================================
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.02.01. ip_mmcm
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	    signal s_ip_mmcm_i_clk    : std_logic;
	    signal s_ip_mmcm_o_clk    : std_logic;
		signal s_ip_mmcm_i_rst    : std_logic;
	    signal s_ip_mmcm_o_locked : std_logic;
		
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.02.02. gen_heartbeat
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		signal s_gen_heartbeat_o_alive : std_logic;
		signal s_gen_heartbeat_o_error : std_logic_vector(7 downto 0);

	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.02.02. gen_heartbeat
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        signal s_dut_i_tx_data_en : std_logic;
        signal s_dut_i_tx_data    : std_logic_vector(c_dut_data_length-1 downto 0);
        signal s_dut_o_tx_ready   : std_logic;
        signal s_dut_o_tx_done    : std_logic;
        signal s_dut_o_tx_line    : std_logic;
        signal s_dut_o_tx_error   : std_logic_vector(7 downto 0);
        signal s_dut_o_rx_data_en : std_logic;
        signal s_dut_o_rx_data    : std_logic_vector(c_dut_data_length-1 downto 0);
        signal s_dut_o_rx_ready   : std_logic;
        signal s_dut_o_rx_done    : std_logic;
        signal s_dut_i_rx_line    : std_logic;
        signal s_dut_o_rx_error   : std_logic_vector(7 downto 0);
		signal s_error_rx         : std_logic;
		signal s_error_tx         : std_logic;
	
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.02.02. board
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        signal s_rst : std_logic;
	
begin

    -- ==================================================================================================================================================================================================
	-- 03.03. input assignment
    -- ==================================================================================================================================================================================================
	s_ip_mmcm_i_clk <= OSC_100M;
	s_ip_mmcm_i_rst <= BTN9;
	s_dut_i_tx_data_en <= BTN8;
	s_dut_i_rx_line <= UART_RX;
	s_dut_i_tx_data <= SW7 & SW6 & SW5 & SW4 & SW3 & SW2 & SW1 & SW0;

    -- ==================================================================================================================================================================================================
	-- 03.05. DUT reset management
    -- ==================================================================================================================================================================================================
    p_mgt_rst : process(s_ip_mmcm_o_locked)
	begin
	    if (s_ip_mmcm_o_locked = '0') then
		    s_rst <= '1';
		else
		    s_rst <= '0';    
		end if;
	end process p_mgt_rst;

    -- ==================================================================================================================================================================================================
	-- 03.05. components instanciation
    -- ==================================================================================================================================================================================================
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.05.01. ip_mmcm
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        inst_ip_mmcm : ip_mmcm
            port map (
	             clk_in1  => s_ip_mmcm_i_clk
		        ,reset    => s_ip_mmcm_i_rst
				,locked   => s_ip_mmcm_o_locked
				,clk_out1 => s_ip_mmcm_o_clk
	        );

	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.05.02. gen_heartbeat
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        inst_gen_heartbeat : gen_heartbeat
            generic map (
	             g_clk_i_freq => c_mmcm_freq
		        ,g_clk_o_freq => c_heartbeat_freq
	        )
            port map (
	             i_clk   => s_ip_mmcm_o_clk
		        ,i_rst   => s_rst
		        ,o_alive => s_gen_heartbeat_o_alive
				,o_error => s_gen_heartbeat_o_error
	        );

	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.05.02. DUT : core_uart
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        inst_core_uart : core_uart
            generic map (
	             g_clk_i_freq  => c_mmcm_freq
		        ,g_baud        => c_dut_baud
		        ,g_data_length => c_dut_data_length
	        )
            port map (
	             i_clk        => s_ip_mmcm_o_clk
		        ,i_rst        => s_rst
		        ,i_tx_data_en => s_dut_i_tx_data_en
		        ,i_tx_data    => s_dut_i_tx_data
		        ,o_tx_ready   => s_dut_o_tx_ready
		        ,o_tx_done    => s_dut_o_tx_done
		        ,o_tx_line    => s_dut_o_tx_line
		        ,o_tx_error   => s_dut_o_tx_error
		        ,o_rx_data_en => s_dut_o_rx_data_en
		        ,o_rx_data    => s_dut_o_rx_data
		        ,o_rx_ready   => s_dut_o_rx_ready
		        ,o_rx_done    => s_dut_o_rx_done
		        ,i_rx_line    => s_dut_i_rx_line
		        ,o_rx_error   => s_dut_o_rx_error
	        );

    -- ==================================================================================================================================================================================================
	-- 03.04. parsing core_uart error vectors
    -- ==================================================================================================================================================================================================
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.05.01. uart transmitter
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	    p_check_dut_error_tx : process(s_rst,s_ip_mmcm_o_clk)
	        variable v_error : std_logic;
	    begin
	        if (s_rst = '1') then
	            v_error := '0';
			    s_error_tx <= '0';
	        elsif (rising_edge(s_ip_mmcm_o_clk)) then
		        v_error := '0';
			    -- parsing s_dut_o_error error vector
		        for i in 0 to s_dut_o_tx_error'length-1 loop
		            -- error detected
			        if (s_dut_o_tx_error(i) = '1') then
				        v_error := '1';
				    end if;
			    end loop;
			    s_error_tx <= v_error;
		    end if;
	    end process p_check_dut_error_tx;	

	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- 03.05.01. uart receiver
	    -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	    p_check_dut_error_rx : process(s_rst,s_ip_mmcm_o_clk)
	        variable v_error : std_logic;
	    begin
	        if (s_rst = '1') then
	            v_error := '0';
			    s_error_rx <= '0';
	        elsif (rising_edge(s_ip_mmcm_o_clk)) then
		        v_error := '0';
			    -- parsing s_dut_o_error error vector
		        for i in 0 to s_dut_o_rx_error'length-1 loop
		            -- error detected
			        if (s_dut_o_rx_error(i) = '1') then
				        v_error := '1';
				    end if;
			    end loop;
			    s_error_rx <= v_error;
		    end if;
	    end process p_check_dut_error_rx;

    -- ==================================================================================================================================================================================================
	-- 03.06. output assignment
    -- ==================================================================================================================================================================================================
	LD0 <= s_dut_o_tx_ready;
	LD1 <= s_dut_o_tx_done;
	LD2 <= s_error_tx;
	LD3 <= s_dut_o_rx_ready;
	LD4 <= s_dut_o_rx_done;
	LD5 <= s_error_rx;
	LD6 <= s_dut_o_rx_data_en;
	LD7 <= s_gen_heartbeat_o_alive;
	UART_TX <= s_dut_o_tx_line;

end architecture schematic;

-- ######################################################################################################################################################################################################
-- EOF
-- ######################################################################################################################################################################################################