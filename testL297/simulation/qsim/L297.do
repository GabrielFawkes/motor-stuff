onerror {quit -f}
vlib work
vlog -work work L297.vo
vlog -work work L297.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.test297_vlg_vec_tst
vcd file -direction L297.msim.vcd
vcd add -internal test297_vlg_vec_tst/*
vcd add -internal test297_vlg_vec_tst/i1/*
add wave /*
run -all
