#!/bin/bash
#SBATCH --mail-type=END
#SBATCH --job-name=ConfigFile
##SBATCH --output=
##SBATCH --array=
#SBATCH --time=00:05:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=1000

#name1=$(sed -n "$SLURM_ARRAY_TASK_ID"p Predictors.txt)
#name2=$(sed -n "$SLURM_ARRAY_TASK_ID"p Responses.txt)
#redux=$(echo $name2 | cut -f 1 -d '.')

#export MKL_NUM_THREADS=1
#export OMP_NUM_THREADS=1
#export OPENBLAS_NUM_THREADS=1

srun python ConfigGenerator.py config -r True -i 10000 -b 1.0 -p /scratch/pp58/RNAseq/Bootstrap/FvsK
