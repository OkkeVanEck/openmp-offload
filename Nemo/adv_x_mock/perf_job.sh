#!/usr/bin/env bash
#SBATCH --job-name=interactive_node
#SBATCH --account=project_465000454
#SBATCH --time=05:00:00
#SBATCH --gpus-per-node=8
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --partition=standard-g

# Load modules.
module load LUMI/23.03 partition/G PrgEnv-cray cpe/23.03 craype-x86-trento craype-accel-amd-gfx90a rocm cray-fftw/3.3.10.1 cray-hdf5/1.12.1.5 cray-netcdf/4.8.1.5

# Compile code for performance profiling.
make amd_perf

# Execute performance test with different input sizes and store output.
JPI=200 JPJ=350 NCATS=5 TMASK3=75 ./performance.out &> "200_350_10_150.txt"
JPI=250 JPJ=400 NCATS=15 TMASK3=75 ./performance.out &> "300_475_15_225.txt"
JPI=300 JPJ=450 NCATS=20 TMASK3=75 ./performance.out &> "400_700_20_300.txt"

make clean
