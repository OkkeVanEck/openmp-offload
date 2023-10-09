adv_x_mock: adv_x_mock.F90 helpers.F90
	gfortran adv_x_mock.F90 helpers.F90 -o adv_x_mock.o

adv_x_mock_debug: adv_x_mock.F90 helpers.F90
	gfortran -DDEBUG_ON=1 adv_x_mock.F90 helpers.F90 -o adv_x_mock_debug.o

clean:
	rm -rf *.o *.mod