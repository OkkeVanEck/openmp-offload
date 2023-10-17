rm -rf lumi_version
mkdir lumi_version
scp -r lumi:openmp-offload/Nemo/adv_x_mock/{*.F90,Makefile,results.*,*.txt,*.sh} ./lumi_version
