onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/i_clk
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/i_rst
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/i_data_en
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/i_data
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/o_ready
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/o_done
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/o_tx
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/o_error
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_clk
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_rst
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_error_ratio
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_data
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_data_en
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_data_reg
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_cnt_clk
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_cnt_bit
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_tx
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_ready
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_done
add wave -noupdate -group inst_hst_core_uart_tx /bch_core_uart/inst_hst_core_uart/inst_core_uart_tx/s_fsm_main
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/i_clk
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/i_rst
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/o_data_en
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/o_data
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/o_ready
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/o_done
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/i_rx
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/o_error
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_clk
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_rst
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_error_ratio
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_data
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_data_en
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_data_reg
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_cnt_bit
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_rx
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_ready
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_done
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_tick
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_rx_meta
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_rx_sync
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_cnt_baud_rate
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_cnt_tick
add wave -noupdate -group inst_hst_core_uart_rx /bch_core_uart/inst_hst_core_uart/inst_core_uart_rx/s_fsm_main
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/i_clk
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/i_rst
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/i_data_en
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/i_data
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/o_ready
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/o_done
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/o_tx
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/o_error
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_clk
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_rst
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_error_ratio
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_data
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_data_en
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_data_reg
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_cnt_clk
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_cnt_bit
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_tx
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_ready
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_done
add wave -noupdate -group inst_dut_core_uart_tx /bch_core_uart/inst_dut_core_uart/inst_core_uart_tx/s_fsm_main
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/i_clk
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/i_rst
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/o_data_en
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/o_data
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/o_ready
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/o_done
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/i_rx
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/o_error
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_clk
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_rst
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_error_ratio
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_data
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_data_en
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_data_reg
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_cnt_bit
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_rx
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_ready
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_done
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_tick
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_rx_meta
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_rx_sync
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_cnt_baud_rate
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_cnt_tick
add wave -noupdate -group inst_dut_core_uart_rx /bch_core_uart/inst_dut_core_uart/inst_core_uart_rx/s_fsm_main
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_fsm_main_state
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_fsm_init_state
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_fsm_test_state
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_fsm_file_mgt_log
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_fsm_file_mgt_rpt
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_file_req_log_open
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_file_ack_log_open
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_file_req_log_close
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_file_ack_log_close
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_file_req_rpt_open
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_file_ack_rpt_open
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_file_req_rpt_close
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_file_ack_rpt_close
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_clk
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_osc
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_clk
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_rst
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_done
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_init_req
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_init_ack
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_test_req
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_test_ack
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_sim_test_status
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_error
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_array_data_cnt
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_error_test
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_i_clk
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_i_rst
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_i_data_en
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_i_data
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_o_ready
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_o_done
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_o_line
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_o_error
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_i_data_en_reg
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_i_data_en_reg_gen_tmp
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_tx_i_data_en_reg_gen
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_rx_o_data_en
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_rx_o_data
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_rx_o_ready
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_rx_o_done
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_rx_i_line
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_dut_uart_rx_o_error
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_i_clk
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_i_rst
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_tx_i_data_en
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_tx_i_data
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_tx_o_ready
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_tx_o_done
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_tx_o_line
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_tx_o_error
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_rx_o_data_en
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_rx_o_data
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_rx_o_ready
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_rx_o_done
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_rx_o_done_r
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_rx_o_done_re
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_rx_i_line
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/s_hst_uart_rx_o_error
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_sim_clk_freq
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_sim_clk_delay
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_sim_rst_delay
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_sim_clk_period_ns
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_sim_clk_period
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_osc_delay
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_osc_freq
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_osc_period_ns
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_dut_rst_delay
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_dut_clk_freq
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_dut_clk_period
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_dut_baud
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_dut_data_length
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_hst_clk_freq
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_hst_clk_delay
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_hst_rst_delay
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_hst_clk_period_ns
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_hst_clk_period
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_hst_baud
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_hst_data_length
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_file_log_name
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_file_rpt_name
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_array_data_length
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_array_data
add wave -noupdate -expand -group bch_core_uart /bch_core_uart/c_ratio_clk_sim_clk_dut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {58336300 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {388763550 ps}
