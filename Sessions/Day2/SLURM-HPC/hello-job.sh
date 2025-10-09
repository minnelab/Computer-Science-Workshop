#!/bin/bash
#SBATCH --job-name=hello-job
#SBATCH --output=hello-job.out
#SBATCH --error=hello-job.err
#SBATCH --ntasks=1
#SBATCH --time=00:05:00
#SBATCH --gpu=1

python3 hello.py