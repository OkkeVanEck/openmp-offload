CFLAGS=-O3 -Wall -Wextra -Wconversion
AMD_FLAGS=-homp -hnoacc -fopenmp -lm
NVIDIA_FLAGS=-fopenmp -mp=gpu -lm
LOCAL_FLAGS=-fopenmp
DEBUG_FLAGS=-g -DDEBUG_ON=1

# AMD targets.
adv_x_mock_amd: helpers.F90 adv_x_mock.F90 
	ftn ${CFLAGS} ${AMD_FLAGS} helpers.F90 adv_x_mock.F90 -o adv_x_mock.o

adv_x_mock_amd_debug: helpers.F90 adv_x_mock.F90 
	ftn ${CFLAGS} ${AMD_FLAGS} ${DEBUG_FLAGS} helpers.F90 adv_x_mock.F90 -o adv_x_mock_debug.o

# NVIDIA targets.
adv_x_mock_nvidia: helpers.F90 adv_x_mock.F90 
	nvfortran ${CFLAGS} ${NVIDIA_FLAGS} helpers.F90 adv_x_mock.F90 -o adv_x_mock.o

adv_x_mock_nvidia_debug: helpers.F90 adv_x_mock.F90 
	nvfortran ${CFLAGS} ${NVIDIA_FLAGS} ${DEBUG_FLAGS} helpers.F90 adv_x_mock.F90 -o adv_x_mock_debug.o

# Local targets.
adv_x_mock_local: helpers.F90 adv_x_mock.F90 
	gfortran ${CFLAGS} ${LOCAL_FLAGS} helpers.F90 adv_x_mock.F90 -o adv_x_mock.o

adv_x_mock_local_debug: helpers.F90 adv_x_mock.F90 
	gfortran ${CFLAGS} ${LOCAL_FLAGS} ${DEBUG_FLAGS} helpers.F90 adv_x_mock.F90 -o adv_x_mock_debug.o

clean:
	rm -rf *.o *.mod