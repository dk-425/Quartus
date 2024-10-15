###################################################################
# Makefile
# nikhil-wisig
# 03/04/2023
###################################################################
SHELL := /bin/bash
BOARD ?= hitek
QSYS_FILE := qsys_top.qsys

$(shell python3 scripts/render_mk.py $(BOARD))
include $(BOARD).mk 
QSF := $(BOARD).qsf
# this variable is updated if .f file is updated
SRC = $(strip $(shell cat $(BOARD).f))

ASSIGNMENT_FILES = $(BOARD).qpf $(BOARD).qsf 

# QSYS_SOURCES := $(wildcard *.qsys) $(wildcard ip/*.ip)

all: sof


$(BOARD).dep.done: $(BOARD).yaml templates/$(BOARD).tcl.j2
	python3 scripts/render_f.py $(BOARD)
	python3 scripts/render.py $(BOARD)
	touch $(BOARD).dep.done

$(BOARD).qsf.done: $(BOARD).dep.done $(BOARD).tcl $(BOARD).f
	quartus_sh -t $(BOARD).tcl
	touch $(BOARD).qsf.done

# any change in src files or the project will run synthesis 
syn: $(SRC) $(BOARD).qsf.done $(QSYS_FILE) $(BOARD).qsys.gen.done
	quartus_syn $(BOARD)

# --output-directory=qsys is not supported in 21.3
$(QSYS_FILE): $(BOARD).qsf.done scripts/$(BOARD)_qsys.tcl
	echo "INFO: $? triggered the qsys_file generation"
	qsys-script --script=$(QSYS_SCRIPT) --quartus-project=$(BOARD)

# QSYS_SOURCES := quartus_ipgenerate --get_project_ip_files $(BOARD)
$(BOARD).qsys.gen.done: $(QSYS_FILE)
	echo "INFO: $? triggered the qsys.gen"
#   update the sysid
	qsys-script --qpf=none --script=scripts/update_sysid.tcl --system-file=qsys_top.qsys

	quartus_ipgenerate --generate_project_ip_files --synthesis=verilog $(BOARD)
# qsys-generate $(QSYS_FILE) --synthesis=VERILOG --output-directory=qsys_top --family=Agilex --part=$(FLASH_LOADER)
	touch $(BOARD).qsys.gen.done

# qsys-generate qsys_top.qsys --synthesis --quartus-project=$(BOARD) --output-directory=qsys

stp: syn 
# run synthesis and open stp editor

$(BOARD).sof.done: $(BOARD).qsf.done $(SRC) $(BOARD).qsys.gen.done
	echo "INFO: $? triggered .sof generation"
	quartus_sh -t scripts/sof.tcl $(BOARD)
	touch $(BOARD).sof.done

# $(BOARD).sof.done 
$(BOARD).rbf.done: $(BOARD).sof.done
	quartus_pfg -c $(BUILD_DIR)/$(SOF_NAME) \
	${JIC_FILENAME}.jic \
	-o device=MT25QU02G \
	-o flash_loader=$(FLASH_LOADER) \
	-o hps_path=$(SPL_NAME) \
	-o mode=ASX4 \
	-o hps=on
	touch $(BOARD).rbf.done

package: 
	$(SHELL) scripts/package.sh agib027_rel $(BOARD)

$(BOARD).deploy.done: ${JIC_FILENAME}.core.rbf
	sh scripts/deploy.sh ${JIC_FILENAME}.core.rbf 
	touch $@

clean: 
	rm -rf *.done 

ultraclean:
	rm -rf *.mk *.qsf *.qpf *.qsys* *.tcl *.f *.done qdb tmp-clearbox ip qsys_top subsys_jtg_mst subsys_periph 

sof: $(BOARD).sof.done 
qsys: $(BOARD).qsys.gen.done
rbf: $(BOARD).rbf.done 
deploy: $(BOARD).deploy.done 

.PHONY: all clean ultraclean qsys syn stp sof rbf
