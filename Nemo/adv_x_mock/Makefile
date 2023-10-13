AMD_FLAGS=-O3 -homp -hnoacc -fopenmp -lm
AMD_DEBUG_FLAGS=-G0 -DDEBUG_ON=1

NVIDIA_FLAGS=-O3 -Wall -Wextra -Wconversion -fopenmp -mp=gpu -lm
NVIDIA_DEBUG_FLAGS=-g -DDEBUG_ON=1

LOCAL_FLAGS=-fopenmp
LOCAL_DEBUG_FLAGS=-g -DDEBUG_ON=1

FFILES=adv_x_mock_data_simd.F90 adv_x_mock_data_beta.F90 adv_x_mock_data.F90 adv_x_mock_seq.F90 helpers.F90 adv_x_mock.F90


# AMD targets.
adv_x_mock_amd: helpers.F90 adv_x_mock.F90 
	ftn ${AMD_FLAGS} ${FFILES} -o adv_x_mock.o

adv_x_mock_amd_debug: helpers.F90 adv_x_mock.F90 
	ftn ${AMD_FLAGS} ${AMD_DEBUG_FLAGS} ${FFILES} -o adv_x_mock_debug.o

# NVIDIA targets.
adv_x_mock_nvidia: helpers.F90 adv_x_mock.F90 
	nvfortran ${NVIDIA_FLAGS} ${FFILES} -o adv_x_mock.o

adv_x_mock_nvidia_debug: helpers.F90 adv_x_mock.F90 
	nvfortran ${NVIDIA_FLAGS} ${NVIDIA_DEBUG_FLAGS} ${FFILES} -o adv_x_mock_debug.o

# Local targets.
adv_x_mock_local: helpers.F90 adv_x_mock.F90 
	gfortran ${LOCAL_FLAGS} ${FFILES} -o adv_x_mock.o

adv_x_mock_local_debug: helpers.F90 adv_x_mock.F90 
	gfortran ${LOCAL_FLAGS} ${LOCAL_DEBUG_FLAGS} ${FFILES} -o adv_x_mock_debug.o

clean:
	rm -rf *.o *.mod