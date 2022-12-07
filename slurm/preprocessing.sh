#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=0:30:00

# Controls the minimum/maximum number of nodes allocated to the job
#SBATCH -N 1

# Default resources are 1 core with 2.8GB of memory.
# Use more memory (4GB):
#SBATCH --mem=20lsG

# Specify a job name:
#SBATCH -J MyPreprocessing

# Specify an output file
#SBATCH -o MyPreprocessing-%j.out
#SBATCH -e MyPreprocessing-%j.out

# Run a command

export PYTHONUNBUFFERED=TRUE
# source ~/.conda/envs/conda_env/bin/python /users/pnagala1/anaconda/conda_env

python3 ../preprocessing/preprocessing.py