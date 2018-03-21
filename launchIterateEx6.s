#!/bin/bash

#SBATCH --job-name=iterateEx6
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=10GB
#SBATCH --output=out.%j

module purge
module load python-2.7
module load numpy/intel/1.13.1
module load pytorch

python ./iterateEx6.py

# #SBATCH --job-name=lab1
# #SBATCH --nodes=1
# #SBATCH --cpus-per-task=1
# #SBATCH --mem=10GB
# #SBATCH --gres=gpu
# #SBATCH --time=01:00:00
# #SBATCH --output=out.%j

# module load pytorch/python3.6/0.3.0_4
# python ./lab1GPU.pytorch

