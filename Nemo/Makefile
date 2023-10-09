adv_x_mock: helpers.F90 adv_x_mock.F90 
	gfortran helpers.F90 adv_x_mock.F90 -o adv_x_mock.o

adv_x_mock_debug: helpers.F90 adv_x_mock.F90 
	gfortran -DDEBUG_ON=1 helpers.F90 adv_x_mock.F90 -o adv_x_mock_debug.o

clean:
	rm -rf *.o *.mod