# Conda

## Trying out Conda 

* Create a fork of: https://github.com/kthcloud/Computer-Science-Workshop 
  This is done through the GitHub website by clicking the "Fork" button 

* Clone the repo to your local computer  
```bash
  git clone https://github.com/YOUR-USERNAME/Computer-Science-Workshop.git
  cd Computer-Science-Workshop  
```

* Install the conda environment specified in env.yml  
```bash
  # Create and activate environment from yml file
  conda env create -f env.yml
  conda activate DL_labs_GPU 
```

* Create a new environment with your name and install the requirements file  
```bash
  # Create a new environment with Python 3.9
  conda create --name YOUR_NAME python=3.9
  
  # Activate your new environment
  conda activate YOUR_NAME
  
  # Install requirements from the requirements.txt file
  pip install -r requirements.txt  
```

* Remove the environments  
```bash
  # Deactivate current environment first
  conda deactivate
  
  # Remove the second environment
  conda env remove --name YOUR_NAME  
```

**Note:** Replace `YOUR-USERNAME` and `YOUR_NAME` with your actual GitHub username and preferred environment name respectively.
