rm -rf meluxina_version
mkdir meluxina_version
scp -r meluxina:openmp-offload/Nemo/adv_x_mock/{*.F90,Makefile,report*} ./meluxina_version
