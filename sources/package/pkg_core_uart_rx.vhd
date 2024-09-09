-- ######################################################################################################################################################################################################
-- file :
--     pkg_gen_heartbeat.vhd
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- objective :
--     gen_heartbeat.vhd package.
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- level of description :
--     package.
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- limitation :
--     none.
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- author :
--     Tugdual LE PELLETER
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- history :
--     2023-11-11
--         file creation
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- table of contents :
--     01. libraries
--         01.01. standard
--     02. package header
--         02.01. constants
--             02.01.01. board features
--             02.01.02. DUT : gen_heartbeat
--     03. package body
-- ######################################################################################################################################################################################################

-- ######################################################################################################################################################################################################
-- 01. libraries
-- ######################################################################################################################################################################################################
    -- ==================================================================================================================================================================================================
	-- 01.01. standard
    -- ==================================================================================================================================================================================================
    library ieee;
        use ieee.std_logic_1164.all;
	
-- ######################################################################################################################################################################################################
-- 02. package header
-- ######################################################################################################################################################################################################
	
package pkg_core_uart_rx is

    -- ==================================================================================================================================================================================================
	-- 02.01. constants
    -- ==================================================================================================================================================================================================
    constant c_clk_ratio_upper_bound : integer := 16;
	constant c_pos_error_ratio       : integer :=  1;

end package pkg_core_uart_rx;

-- ######################################################################################################################################################################################################
-- 03. package body
-- ######################################################################################################################################################################################################

package body pkg_core_uart_rx is

-- None

end package body pkg_core_uart_rx;

-- ######################################################################################################################################################################################################
-- EOF
-- ######################################################################################################################################################################################################