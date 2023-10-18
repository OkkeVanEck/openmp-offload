AMD_FLAGS=-O1 -hipa3 -homp -hnoacc -fopenmp -lm 	# Add -hlist=amid for listings
AMD_DEBUG_FLAGS=-G0 -DDEBUG_ON=1

NVIDIA_FLAGS=-O1 -Wall -Wextra -fopenmp -mp=gpu -lm
NVIDIA_DEBUG_FLAGS=-g -DDEBUG_ON=1

LOCAL_FLAGS=-fopenmp
LOCAL_DEBUG_FLAGS=-g -DDEBUG_ON=1

VAL_FILES=\
helpers.F90 \
adv_x_helpers.F90 \
adv_x_mock_data_simd.F90 \
adv_x_mock_data_cat.F90 \
adv_x_mock_data_beta.F90 \
adv_x_mock_data.F90 \
adv_x_mock_collapse_cpu.F90 \
adv_x_mock_collapse_custom.F90 \
adv_x_mock_collapse.F90 \
adv_x_mock_rc.F90 \
adv_x_mock_rc_collapsed.F90 \
adv_x_mock_rc_collapsed_wrong.F90 \
adv_x_mock_cpu.F90 \
adv_x_mock_seq.F90

PERF_FILES=\
helpers.F90 \
adv_x_helpers.F90 \
adv_x_mock_data_cat.F90 \
adv_x_mock_data_beta.F90 \
adv_x_mock_collapse_cpu.F90 \
adv_x_mock_collapse_custom.F90 \
adv_x_mock_collapse.F90 \
adv_x_mock_rc.F90 \
adv_x_mock_rc_collapsed.F90 \
adv_x_mock_rc_collapsed_wrong.F90 \
adv_x_mock_cpu.F90 \
adv_x_mock_seq.F90


# AMD compilation targets.
comp_amd_val: ${VAL_FILES} validation.F90 
	ftn ${AMD_FLAGS} ${VAL_FILES} validation.F90 -o validation.out

comp_amd_val_debug: ${VAL_FILES} validation.F90 
	ftn ${AMD_FLAGS} ${AMD_DEBUG_FLAGS} ${VAL_FILES} validation.F90 -o validation_debug.out

comp_amd_perf: ${PERF_FILES} performance.F90 
	ftn ${AMD_FLAGS} ${PERF_FILES} performance.F90 -o performance.out

comp_amd_perf_debug: ${PERF_FILES} performance.F90 
	ftn ${AMD_FLAGS} ${AMD_DEBUG_FLAGS} ${PERF_FILES} performance.F90 -o performance_debug.out

# NVIDIA compilation targets.
comp_nvidia_val: ${VAL_FILES} validation.F90
	nvfortran ${NVIDIA_FLAGS} ${VAL_FILES} validation.F90 -o validation.out

comp_nvidia_val_debug: ${VAL_FILES} validation.F90
	nvfortran ${NVIDIA_FLAGS} ${NVIDIA_DEBUG_FLAGS} ${VAL_FILES} validation.F90 -o validation_debug.out

# Local compilation targets.
comp_local_val: ${VAL_FILES} validation.F90 
	gfortran ${LOCAL_FLAGS} ${VAL_FILES} validation.F90 -o validation.out

comp_local_val_debug: ${VAL_FILES} validation.F90
	gfortran ${LOCAL_FLAGS} ${LOCAL_DEBUG_FLAGS} ${VAL_FILES} validation.F90 -o validation_debug.out

# Clean targets
clean:
	rm -rf *.o *.out *.mod *.acc.s *.lst *.opt *.cg core

clean_perf:
	rm -rf results.* report*

# Combined targets
amd_val:
	clear
	@make --no-print-directory clean
	@make --no-print-directory clean_perf
	@make --no-print-directory comp_amd_val

amd_perf:
	clear
	@make --no-print-directory clean
	@make --no-print-directory clean_perf
	@make --no-print-directory comp_amd_perf

amd_perf_debug:
	clear
	@make --no-print-directory clean
	@make --no-print-directory clean_perf
	@make --no-print-directory comp_amd_perf_debug

nvidia_val:
	clear
	@make --no-print-directory clean
	@make --no-print-directory clean_perf
	@make --no-print-directory comp_nvidia_val

local_val:
	clear
	@make --no-print-directory clean
	@make --no-print-directory clean_perf
	@make --no-print-directory comp_nvidia_val
