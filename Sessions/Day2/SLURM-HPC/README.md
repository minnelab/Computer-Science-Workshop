# SLURM and HPC

## What is SLURM?

SLURM is an open-source workload manager to schedule and allocate resources on a server/cluster. As opposed to other computing infrastructures (Kubernetes, Docker Swarm, etc.), SLURM is specifically designed for High-Performance Computing (HPC) environments. It is widely used in academia and research institutions to manage and schedule jobs on supercomputers and clusters.

![HPC](HPC.JPG)

When using SLURM, it is important to understand the following concepts:

- **Job**: A job is a task or a set of tasks that are submitted to the SLURM scheduler. Each job is assigned a unique job ID.

- **Partition**: A partition is a logical grouping of nodes in a cluster. Each partition can have different configurations and resources.

- **Node**: A node is a physical machine in a cluster. Each node can have multiple CPUs, GPUs, and memory.

- **Task**: A task is a unit of work that is executed on a node. A job can have multiple tasks.

- **Resource**: A resource is a physical or logical entity that is required by a job, such as CPU cores, memory, GPUs, etc.

- **Scheduler**: The scheduler is responsible for allocating resources to jobs based on the policies defined in the SLURM configuration.

- **Queue**: A queue is a waiting area where jobs are placed before they are executed

### Resource Allocation in SLURM

When submitting a job to SLURM, you need to specify the resources required by the job, such as the number of CPU cores, memory, GPUs, etc. This helps the scheduler to allocate the necessary resources for your job to run efficiently.

Additionally, when requesting resources to SLURM, it is important to understand that the resources are not immediately available. The scheduler will allocate the resources based on the availability and the policies defined in the SLURM configuration.

Each user is part of a group, and each group has a set of resources allocated to it. The resources are shared among the users in the group based on the fair-share policy defined in the SLURM configuration. When the resource quota is reached, the scheduler will start queuing the jobs until the resources become available.


## Why Use SLURM?
SLURM is the standard workload manager for many HPC systems and supercomputers. Here are some reasons why SLURM is widely used in the HPC community:

- **Scalability**: SLURM can scale to manage thousands of nodes and tens of thousands of cores in a cluster.

- **Efficiency**: SLURM can efficiently allocate resources to jobs based on the policies defined in the configuration.

- **Flexibility**: SLURM provides a wide range of options to customize job submission, resource allocation, and scheduling.

- **Fairness**: SLURM ensures fair resource allocation among users and groups based on the fair-share policy.

- **Reliability**: SLURM is a mature and stable workload manager that is widely used in academia and research institutions.

- **Community Support**: SLURM has an active community of users and developers who provide support and contribute to the development of the software.

## SLURM Commands

Here are some common SLURM commands that you can use to interact with the SLURM scheduler:

- `sbatch`: Submit a batch job to the SLURM scheduler
- `squeue`: View the status of jobs in the queue
- `sinfo`: View the status of nodes and partitions in the cluster
- `scancel`: Cancel a job that is running or in the queue
- `scontrol`: Control the SLURM scheduler and configuration
- `sacct`: View accounting information for jobs
- `salloc`: Allocate resources for an interactive job



## Live Demo

In this live demo, we will demonstrate how to submit a job to the SLURM scheduler, monitor the job status, and view the resource allocation on the cluster.

### Step 1: Log in to the Cluster

First, log in to the cluster using SSH:

```bash
ssh <username>@maia-cloud.se
```

### Step 2: View the Status of Nodes and Partitions

To view the status of nodes and partitions in the cluster, use the `sinfo` command:

```bash
sinfo
```

### Step 3 Create a Python Script Locally and Transfer it to the Cluster

Create a simple Python script locally and transfer it to the cluster using `scp`:

```python
import sleep
print("Hello, World!")
sleep(300)
```

Transfer the Python script to the cluster using `scp`:

```bash
scp hello.py <username>@maia-cloud.se:~
```

### Step 4: Submit a Job to the SLURM Scheduler

To submit a job to the SLURM scheduler, create a batch script with the necessary commands and resources required for the job. For example, create a file named `job.sh` with the following content:

```bash
#!/bin/bash
#SBATCH --job-name=hello-job
#SBATCH --output=hello-job.out
#SBATCH --error=hello-job.err
#SBATCH --ntasks=1
#SBATCH --time=00:05:00
#SBATCH --gpus=1

python3 hello.py

```

In this script, we are requesting one CPU core, one GPU, and a time limit of 5 minutes to run the Python script `hello.py`.

Transfer the batch script to the cluster using `scp`:

```bash
scp hello-job.sh <username>@maia-cloud.se:~
```

Submit the job to the SLURM scheduler using the `sbatch` command:

```bash
sbatch hello-job.sh
```

### Step 5: Monitor the Job Status

To monitor the status of the job, use the `squeue` command:

```bash
squeue -u <username>
```

### Step 6: View the Output of the Job

Once the job has completed, you can view the output and error files generated by the job:

```bash
cat hello-job.out
cat hello-job.err
```

### Step 7: Cancel the Job
Finally, if you need to cancel the job, you can use the `scancel` command:

```bash
scancel <job_id>
```

## Advanced Tutorial

Try now to submit a job that requires numpy and pandas. You can install the packages using pip in the batch script.

Create a new batch script named `python-job.sh` with the following content:

```bash
#!/bin/bash

#SBATCH --job-name=python-job
#SBATCH --output=python-job.out
#SBATCH --error=python-job.err
#SBATCH --ntasks=1
#SBATCH --time=00:05:00
#SBATCH --gpus=1

module load anaconda3-2021.05-gcc-12.1.0-h6fweo2
pip install numpy pandas scikit-learn

python -c "import numpy as np; import pandas as pd; print('Numpy version:', np.__version__); print('Pandas version:', pd.__version__)"
python iris_dataset.py
```

Remember to load the Anaconda module and install the required packages before running the Python script.

