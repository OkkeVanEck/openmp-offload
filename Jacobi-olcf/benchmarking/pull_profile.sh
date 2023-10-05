#!/usr/bin/env bash
# Pull profiles from supercomputers.

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
    profflags="-i rocprof_counters.txt --hip-trace --hsa-trace --stats"
    resfiles_pattern="results.*"
else
    echo "Please specify a compiler with: 
        ./run.sh <compiler_name>  <#iterations> <grid_size>"
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
        ./profile.sh <compiler_name> <#iterations> <grid_size>"
    exit 1
fi

echo "Using grid size ${gridsize}.."

# Parse arguments to iteration selection.
re='^[0-9]+$'
if [[ $3 =~ $re ]] ; then
    numiter=$3
else
    echo "Please specify the number of iterations with: 
        ./profile.sh <compiler_name> <#iterations> <grid_size>"
    exit 1
fi

echo "Using ${numiter} iteration(s).."

scp -r "lumi:openmp-offload/Jacobi-olcf/benchmarking/profile_ftn_s${gridsize}_i${numiter}/" .
