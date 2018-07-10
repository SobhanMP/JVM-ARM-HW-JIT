onerror {exit -code 1}
vlib work
vlog -work work DSD-Project3.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.top_vlg_vec_tst -voptargs="+acc"
vcd file -direction DSD-Project3.msim.vcd
vcd add -internal top_vlg_vec_tst/*
add wave -position insertpoint sim:/top_vlg_vec_tst/*
vcd add -internal top_vlg_vec_tst/i1/*
run -all
