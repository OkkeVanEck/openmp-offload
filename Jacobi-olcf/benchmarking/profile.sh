#!/usr/bin/env bash
# Profile version 6-combined for different grid sizes using given compiler.

# Parse arguments to compiler selection.
if [ "$1" == "gfortran" ]; then
    compiler="gfortran"
    profiler="nvprof"
    profflags="--print-gpu-trace --print-api-trace"
elif [ "$1" == "nvfortran" ]; then
    compiler="nvfortran"
    profiler="nvprof"
    profflags="--print-gpu-trace --print-api-trace"
elif [ "$1" == "ftn" ]; then
    compiler="ftn"
    profiler="rocprof"
    profflags="-i rocprof_counters.txt --hip-trace --hsa-trace --stats"
else
    echo "Please specify a compiler with: ./run.sh <compiler_name>"
    echo "Options: gfortran, nvfortran, ftn"
    exit 1
fi

echo "Using the '${compiler}' compiler.."

# Parse arguments to iteration selection.
re='^[0-9]+$'
if [[ $2 =~ $re ]] ; then
    numiter=$2
else
    echo "Please specify the number of iterations with: 
        ./profile.sh <compiler_name> <#iterations> <grid_size>"
    exit 1
fi

echo "Running for ${numiter} iteration(s).."

# Parse arguments to size selection.
re='^[0-9]+$'
if [[ $3 =~ $re ]] ; then
    gridsize=$3
else
    echo "Please specify the grid size with: 
        ./profile.sh <compiler_name> <#iterations> <grid_size>"
    exit 1
fi

echo "Running with grid size ${gridsize}.."

# Make output folder and setup csv for speedups.
output_folder="profile_${compiler}_i${numiter}_s${gridsize}"
mkdir -p $output_folder

# First make folder for output and compile the code.
cd ../Fortran/6-combined
make $compiler

# Run for specified grid sizes and store full output + speedups extracted.
numversions=6
version_base=5
version_offset=7
speed_base=7

# Run Jacobi and store full output.
echo "Running size ${gridsize}.."
full_file="../../benchmarking/${output_folder}/full_${gridsize}.txt"
$profiler $profflags ./jacobi_${compiler}.o ${gridsize} $numiter &> $full_file

# Move results to the output folder.
mv results.* ../../benchmarking/${output_folder}/

# Clean up afterwards.
make clean
