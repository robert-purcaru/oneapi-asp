# Copyright 2022 Intel Corporation
# SPDX-License-Identifier: MIT

post_message "Running compile_script.tcl script"

# get flow type (from quartus(args) variable)
set flow [lindex $quartus(args) 0]

puts [exec cp -rf ipss ../..]
puts [exec cp -rf src ../..]
puts [exec cp -rf ofs-common ../..]

# simplified PR Quartus flow
qexec "quartus_syn --read_settings_files=on --write_settings_files=off d5005 -c $flow"
qexec "quartus_fit --read_settings_files=on --write_settings_files=off d5005 -c $flow"
qexec "quartus_asm --read_settings_files=on --write_settings_files=off d5005 -c $flow"

qexec "quartus_sta d5005 -c $flow --force_dat"

