transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/vipinsoni/Desktop/MTP2/my_vivado_folder/quartus_simple_vec_dot_product/simple_vec_dot_product.vhd}
vcom -93 -work work {/home/vipinsoni/Desktop/MTP2/my_vivado_folder/quartus_simple_vec_dot_product/simple_vec_dot_product_mul32s_32s_64_6.vhd}

