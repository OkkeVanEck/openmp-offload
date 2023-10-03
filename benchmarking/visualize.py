import pandas as pd
import seaborn as sns
from matplotlib import pyplot as plt


def get_data():
    # computer = input("What computer: ").strip()
    # compiler = input("What compiler: ").strip()

    computer = "meluxina"
    compiler = "gfortran"

    print("Plotting for:")
    print(f"\tComputer: {computer}")
    print(f"\tCompilers: {compiler}")

    speedups = pd.read_csv(f"{computer}/output_{compiler}/speedups.txt")
    
    return speedups


def plot_x_version(speedups):
    # Get data.
    speedups = get_data()

    # Transform version in something readable.
    version_trans = {
        "Serial": "Serial",
        "OpenMP_CPU": "OpenMP\nCPU",
        "OpenMP_GPU_Teams": "OpenMP\nGPU Teams",
        "Compute_OpenMP_GPU_Teams_Parallel": "OpenMP\nGPU Teams\nParallel",
        "Compute_OpenMP_GPU_Teams_Parallel_Implicit_Map": "OpenMP\nGPU Teams\nParallel Implicit Map",
        "Compute_OpenMP_GPU_Teams_Parallel_Data": "OpenMP\nGPU Teams\nParallel Data",
    }
    speedups["version"] = speedups["version"].map(version_trans)

    plt.figure().gca()
    sns.lineplot(data=speedups, x="version", y="speedup", hue="size", palette="tab10", marker=".")


def plot_x_size(speedups):
    # Get data.
    speedups = get_data()

    ax = plt.figure().gca()
    sns.scatterplot(data=speedups, x="size", y="speedup", hue="version", palette="tab10")

    # Style and show.
    ax.set_xscale("log")
    ax.set_xticks(sorted(list(set(speedups["size"]))))
    ax.set_xticklabels(sorted(list(set(speedups["size"]))))
    plt.minorticks_off()


if __name__ == "__main__":
    # Get data.
    speedups = get_data()

    # Plot the data.
    plot_x_size(speedups)
    plot_x_version(speedups)
    plt.show()
