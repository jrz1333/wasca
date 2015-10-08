# TCL File Generated by Component Editor 15.0
# Wed Sep 09 09:19:34 GMT+03:00 2015
# DO NOT MODIFY


# 
# sega_saturn_abus_slave "sega_saturn_abus_slave" v1.0
#  2015.09.09.09:19:34
# 
# 

# 
# request TCL package from ACDS 15.0
# 
package require -exact qsys 15.0


# 
# module sega_saturn_abus_slave
# 
set_module_property DESCRIPTION ""
set_module_property NAME sega_saturn_abus_slave
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME sega_saturn_abus_slave
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL sega_saturn_abus_slave
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file sega_saturn_abus_slave.vhd VHDL PATH sega_saturn_abus_slave.vhd TOP_LEVEL_FILE

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL sega_saturn_abus_slave
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file sega_saturn_abus_slave.vhd VHDL PATH sega_saturn_abus_slave.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clock clk Input 1


# 
# connection point abus
# 
add_interface abus conduit end
set_interface_property abus associatedClock ""
set_interface_property abus associatedReset ""
set_interface_property abus ENABLED true
set_interface_property abus EXPORT_OF ""
set_interface_property abus PORT_NAME_MAP ""
set_interface_property abus CMSIS_SVD_VARIABLES ""
set_interface_property abus SVD_ADDRESS_GROUP ""

add_interface_port abus abus_address address Input 10
add_interface_port abus abus_chipselect chipselect Input 3
add_interface_port abus abus_read read Input 1
add_interface_port abus abus_write write Input 2
add_interface_port abus abus_waitrequest waitrequest Output 1
add_interface_port abus abus_interrupt interrupt Output 1
add_interface_port abus abus_addressdata addressdata Bidir 16
add_interface_port abus abus_direction direction Output 1
add_interface_port abus abus_muxing muxing Output 2
add_interface_port abus abus_disable_out disableout Output 1


# 
# connection point avalon_master
# 
add_interface avalon_master avalon start
set_interface_property avalon_master addressUnits SYMBOLS
set_interface_property avalon_master associatedClock clock
set_interface_property avalon_master associatedReset reset
set_interface_property avalon_master bitsPerSymbol 8
set_interface_property avalon_master burstOnBurstBoundariesOnly false
set_interface_property avalon_master burstcountUnits WORDS
set_interface_property avalon_master doStreamReads false
set_interface_property avalon_master doStreamWrites false
set_interface_property avalon_master holdTime 0
set_interface_property avalon_master linewrapBursts false
set_interface_property avalon_master maximumPendingReadTransactions 0
set_interface_property avalon_master maximumPendingWriteTransactions 0
set_interface_property avalon_master readLatency 0
set_interface_property avalon_master readWaitTime 1
set_interface_property avalon_master setupTime 0
set_interface_property avalon_master timingUnits Cycles
set_interface_property avalon_master writeWaitTime 0
set_interface_property avalon_master ENABLED true
set_interface_property avalon_master EXPORT_OF ""
set_interface_property avalon_master PORT_NAME_MAP ""
set_interface_property avalon_master CMSIS_SVD_VARIABLES ""
set_interface_property avalon_master SVD_ADDRESS_GROUP ""

add_interface_port avalon_master avalon_read read Output 1
add_interface_port avalon_master avalon_write write Output 1
add_interface_port avalon_master avalon_waitrequest waitrequest Input 1
add_interface_port avalon_master avalon_address address Output 28
add_interface_port avalon_master avalon_readdata readdata Input 16
add_interface_port avalon_master avalon_writedata writedata Output 16
add_interface_port avalon_master avalon_readdatavalid readdatavalid Input 1
add_interface_port avalon_master avalon_burstcount burstcount Output 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point conduit_saturn_reset
# 
add_interface conduit_saturn_reset conduit end
set_interface_property conduit_saturn_reset associatedClock ""
set_interface_property conduit_saturn_reset associatedReset ""
set_interface_property conduit_saturn_reset ENABLED true
set_interface_property conduit_saturn_reset EXPORT_OF ""
set_interface_property conduit_saturn_reset PORT_NAME_MAP ""
set_interface_property conduit_saturn_reset CMSIS_SVD_VARIABLES ""
set_interface_property conduit_saturn_reset SVD_ADDRESS_GROUP ""

add_interface_port conduit_saturn_reset saturn_reset saturn_reset Input 1


# 
# connection point avalon_nios
# 
add_interface avalon_nios avalon end
set_interface_property avalon_nios addressUnits WORDS
set_interface_property avalon_nios associatedClock clock
set_interface_property avalon_nios associatedReset reset
set_interface_property avalon_nios bitsPerSymbol 8
set_interface_property avalon_nios burstOnBurstBoundariesOnly false
set_interface_property avalon_nios burstcountUnits WORDS
set_interface_property avalon_nios explicitAddressSpan 0
set_interface_property avalon_nios holdTime 0
set_interface_property avalon_nios linewrapBursts false
set_interface_property avalon_nios maximumPendingReadTransactions 1
set_interface_property avalon_nios maximumPendingWriteTransactions 0
set_interface_property avalon_nios readLatency 0
set_interface_property avalon_nios readWaitTime 1
set_interface_property avalon_nios setupTime 0
set_interface_property avalon_nios timingUnits Cycles
set_interface_property avalon_nios writeWaitTime 0
set_interface_property avalon_nios ENABLED true
set_interface_property avalon_nios EXPORT_OF ""
set_interface_property avalon_nios PORT_NAME_MAP ""
set_interface_property avalon_nios CMSIS_SVD_VARIABLES ""
set_interface_property avalon_nios SVD_ADDRESS_GROUP ""

add_interface_port avalon_nios avalon_nios_read read Input 1
add_interface_port avalon_nios avalon_nios_write write Input 1
add_interface_port avalon_nios avalon_nios_address address Input 8
add_interface_port avalon_nios avalon_nios_writedata writedata Input 16
add_interface_port avalon_nios avalon_nios_readdata readdata Output 16
add_interface_port avalon_nios avalon_nios_waitrequest waitrequest Output 1
add_interface_port avalon_nios avalon_nios_readdatavalid readdatavalid Output 1
add_interface_port avalon_nios avalon_nios_burstcount burstcount Input 1
set_interface_assignment avalon_nios embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_nios embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_nios embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_nios embeddedsw.configuration.isPrintableDevice 0

