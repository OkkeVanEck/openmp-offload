AMD_FLAGS=-O1 -hipa3 -homp -hnoacc -fopenmp -lm 	# Add -hlist=amid for listings
AMD_DEBUG_FLAGS=-G0 -DDEBUG_ON=1

NVIDIA_FLAGS=-O1 -Wall -Wextra -fopenmp -mp=gpu -lm
NVIDIA_DEBUG_FLAGS=-g -DDEBUG_ON=1

LOCAL_FLAGS=-fopenmp
LOCAL_DEBUG_FLAGS=-g -DDEBUG_ON=1

FFILES=\
adv_x_mock_data_simd.F90 \
adv_x_mock_data_cat.F90 \
adv_x_mock_data_beta.F90 \
adv_x_mock_data.F90 \
adv_x_mock_collapse_cpu.F90 \
adv_x_mock_collapse_custom.F90 \
adv_x_mock_collapse.F90 \
adv_x_mock_seq.F90 helpers.F90 \
adv_x_mock.F90


# AMD compilation targets.
comp_amd: helpers.F90 adv_x_mock.F90 
	ftn ${AMD_FLAGS} ${FFILES} -o adv_x_mock.out

comp_amd_debug: helpers.F90 adv_x_mock.F90 
	ftn ${AMD_FLAGS} ${AMD_DEBUG_FLAGS} ${FFILES} -o adv_x_mock_debug.out

# NVIDIA compilation targets.
comp_nvidia: helpers.F90 adv_x_mock.F90 
	nvfortran ${NVIDIA_FLAGS} ${FFILES} -o adv_x_mock.out

comp_nvidia_debug: helpers.F90 adv_x_mock.F90 
	nvfortran ${NVIDIA_FLAGS} ${NVIDIA_DEBUG_FLAGS} ${FFILES} -o adv_x_mock_debug.out

# Local compilation targets.
comp_local: helpers.F90 adv_x_mock.F90 
	gfortran ${LOCAL_FLAGS} ${FFILES} -o adv_x_mock.out

comp_local_debug: helpers.F90 adv_x_mock.F90 
	gfortran ${LOCAL_FLAGS} ${LOCAL_DEBUG_FLAGS} ${FFILES} -o adv_x_mock_debug.out

# Clean targets
clean:
	rm -rf *.o *.mod *.acc.s *.lst *.opt *.cg core

clean_perf:
	rm -rf results.* report*

# Combined targets
amd:
	@make -s clean
	@make -s clean_perf
	clear
	@make -s comp_amd

nvidia:
	@make -s clean
	@make -s clean_perf
	clear
	@make -s comp_nvidia

local:
	@make -s clean
	@make -s clean_perf
	clear
	@make -s comp_nvidia
