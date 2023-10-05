#!/usr/bin/env bash
# Test version 6-combined for different grid sizes using given compiler.

# Parse arguments to compiler selection.
if [ "$1" == "nvfortran" ]; then
    compiler="nvfortran"
elif [ "$1" == "ftn" ]; then
    compiler="ftn"
else
    echo "Please specify a compiler with: ./run.sh <compiler_name> <#iterations>"
    echo "Options: nvfortran, ftn"
    exit 1
fi

echo "Using the '${compiler}' compiler.."

# Parse arguments to iteration selection.
re='^[0-9]+$'
if [[ $2 =~ $re ]] ; then
    numiter=$2
else
    echo "Please specify the number of iterations with: 
        ./run.sh <compiler_name> <#iterations>"
    exit 1
fi

echo "Running for ${numiter} iteration(s).."

# Make output folder and setup csv for speedups.
output_folder="output_${compiler}_i${numiter}"
mkdir -p $output_folder
speedup_file="${output_folder}/speedups.txt"
rm -f $speedup_file
touch $speedup_file
echo "size,version,speedup" >> $speedup_file

# First make folder for output and compile the code.
cd ../Fortran/6-combined
make $compiler

# Set new speedup filepath for new dir.
speedup_file="../../benchmarking/${output_folder}/speedups.txt"

# Run for different grid sizes and store full output + speedups extracted.
sizes=(1024 2048 5096 10192 20384 40768)
numversions=6
version_base=5
version_offset=7
speed_base=7

for s in "${sizes[@]}"; do
    # Run Jacobi and store full output.
    echo -n "Running size ${s}.."
    full_file="../../benchmarking/${output_folder}/full_${s}.txt"
    ./jacobi_${compiler}.o ${s} $numiter &> $full_file

    # Extract version name and speedups from full output.
    for v in $(seq $numversions); do
        # Get version name.
        versionline=$(( version_base + (v - 1) * version_offset ))
        if (( v - 2 >= 1 )); then (( versionline+=1 )); fi

        version=$(sed "${versionline}q;d" $full_file)
        version=${version:9:-9}

        # Get speedup value, add 1 extra line for nThreads line in OpenMP_CPU.
        speedline=$(( speed_base + (v - 1) * version_offset ))
        if (( v >= 2 )); then (( speedline+=1 )); fi

        speedup=$(sed "${speedline}q;d" $full_file)
        speedup=${speedup: -9}

        # Write version and speedup to CSV.
        echo "$s,$version,$speedup" >> $speedup_file
    done
    echo -e "\tDone"
done

# Clean up afterwards.
make clean
