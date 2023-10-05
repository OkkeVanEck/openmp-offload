#!/usr/bin/env bash
# Profile version 6-combined for different grid sizes using given compiler.

# Parse arguments to compiler selection.
if [ "$1" == "gfortran" ]; then
    compiler="gfortran"
    profiler="nsys"
    profflags="profile -t cuda --stats=true"
    resfiles_pattern="report*"
elif [ "$1" == "nvfortran" ]; then
    compiler="nvfortran"
    profiler="nsys"
    profflags="profile -t cuda --stats=true"
    resfiles_pattern="report*"
elif [ "$1" == "ftn" ]; then
    compiler="ftn"
    profiler="rocprof"
    profflags="-i rocprof_counters.txt --hip-trace --stats -o results.csv"
    resfiles_pattern="results.*"
else
    echo "Please specify a compiler with: 
        ./run.sh <compiler_name> <grid_size> <#iterations>"
    echo "Options: gfortran, nvfortran, ftn"
    exit 1
fi

echo "Using the '${compiler}' compiler.."

# Parse arguments to size selection.
re='^[0-9]+$'
if [[ $2 =~ $re ]] ; then
    gridsize=$2
else
    echo "Please specify the grid size with: 
        ./profile.sh <compiler_name> <grid_size> <#iterations>"
    exit 1
fi

echo "Running with grid size ${gridsize}.."

# Parse arguments to iteration selection.
re='^[0-9]+$'
if [[ $3 =~ $re ]] ; then
    numiter=$3
else
    echo "Please specify the number of iterations with: 
        ./profile.sh <compiler_name> <grid_size> <#iterations>"
    exit 1
fi

echo "Running for ${numiter} iteration(s).."


# Make output folder and setup csv for speedups.
output_folder="profile_${compiler}_s${gridsize}_i${numiter}"
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
mv $resfiles_pattern ../../benchmarking/${output_folder}/

# Clean up afterwards.
make clean
