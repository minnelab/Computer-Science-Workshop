#!/bin/bash

#SBATCH --job-name=python-job
#SBATCH --output=iris-job.out
#SBATCH --error=iris-job.err
#SBATCH --ntasks=1
#SBATCH --time=00:05:00
#SBATCH --gpus=1

module load anaconda3-2021.05-gcc-12.1.0-h6fweo2
pip install numpy pandas scikit-learn

python -c "import numpy as np; import pandas as pd; print('Numpy version:', np.__version__); print('Pandas version:', pd.__version__)"
python iris_dataset.py