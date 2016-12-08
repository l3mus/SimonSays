transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/altera/13.1/quartus/my_designs/simon_says/counter.vhd}
vcom -93 -work work {D:/altera/13.1/quartus/my_designs/simon_says/register_file.vhd}
vcom -93 -work work {D:/altera/13.1/quartus/my_designs/simon_says/top.vhd}

