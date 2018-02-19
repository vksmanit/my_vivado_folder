VIVADO_HLS14=/opt/Xilinx/Vivado_HLS/2015.4/bin/vivado_hls

default:all

checkpaths:
	@ls $(VIVADO_HLS14) >/dev/null 2>&1 || echo "Error : incorrect path for vivado_hls."
	@ls $(VIVADO_HLS14) >/dev/null 2>&1

all: checkpaths
	$(VIVADO_HLS14) -f script.tcl

clean:
	rm -rf test_project vivado_hls.log
