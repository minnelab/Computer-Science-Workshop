# Troubleshoting MAIA and ML Packages

**Q: I am having trouble connecting to my MAIA workspace. What should I do?**

A: If you are having trouble connecting to your MAIA workspace, you can try the following steps:

1. Make sure you are connected to the internet.
2. Make sure you are using the correct URL to access your workspace. Verify it on the MAIA Dashboard. If you are not able to access the MAIA Dashboard, please contact the support team.
3. Check if you have an active project in MAIA and if you can access it on the MAIA Dashboard.


**Q: I am facing issues while installing Python packages in my MAIA workspace. How can I troubleshoot this?**

A: If you are facing issues while installing machine learning packages in your MAIA workspace, you can try the following troubleshooting steps:

1. Verify the pip installation command you are using. Make sure you are using the correct syntax and package name.
2. Check if you are using Anaconda or virtual environments in your MAIA workspace. Ensure that you are installing packages in the correct environment, with the correct syntax and that the environment is activated.

**Q: I have installed a Python package in my MAIA workspace, but I am unable to import it in my code. What could be the issue?**

A: If you have installed a Python package in your MAIA workspace but are unable to import it in your code, you can try the following steps:

1. Check if the package is installed in the correct environment. If you are using Anaconda or virtual environments, ensure that the package is installed in the active environment.

2. Verify the import statement in your code. Make sure you are using the correct package name and syntax to import the package.

3. Restart the kernel or terminal session in your MAIA workspace after installing the package to ensure that the changes are applied.

**Q: My MAIA Workspace is restarting frequently. How can I resolve this issue?**

Your MAIA workspace restarts when you hit the memory limit. Be sure to check the memory usage of your workspace and close any unnecessary applications or tabs to free up memory. You can also try restarting your workspace to free up memory. If you need more memory, you can upgrade your workspace plan to get more resources.

**Q: While running a DL model training, I am getting a CUDA out of memory error. How can I resolve this issue?**

If you are getting a CUDA out of memory error while training a deep learning model, you can try the following steps to resolve the issue:

1. Reduce the batch size of your model. A smaller batch size requires less memory and can help avoid out of memory errors.

2. Limit the number of parallel processes or threads running on your GPU. This can help reduce memory usage and prevent out of memory errors.

3. Check the memory usage of your model and data. Make sure you are not loading unnecessary data or using large models that exceed the memory capacity of your GPU.

4. If possible, upgrade your GPU to one with more memory capacity to handle larger models and datasets.

5. Consider using mixed precision training or gradient checkpointing techniques to reduce memory usage during training.

**Q: My ML package (TensorFlow, PyTorch, etc.) is not detecting my GPU in my MAIA workspace. How can I fix this issue?**

If your machine learning package is not detecting your GPU in your MAIA workspace, you can try the following troubleshooting steps:

1. Check if your MAIA workspace is configured to use GPU resources. You can verify this on the MAIA Dashboard or by running the `nvidia-smi` command in a terminal session.

2. Ensure you have installed the correct Torch or TensorFlow version that supports GPU acceleration. Some versions may not be compatible with GPU resources.

For Torch, the recommended installation command is:
```
conda install pytorch torchvision torchaudio cudatoolkit=11.1 -c pytorch
```
And verify the installation with:
```
import torch
print(torch.cuda.is_available())
```

For TensorFlow, the recommended installation command is:
```
pip install tensorflow[and-cuda]
```
And verify the installation with:
```
import tensorflow as tf
print(tf.config.list_physical_devices('GPU'))
```

**Q: My Visual Studio Code (VS Code) is not able to connect to my MAIA workspace. How can I troubleshoot this issue?**

Try to delete the existing SSH key on your MAIA Workspace and generate a new one. Then, download the new SSH key and add it to your VS Code settings. This should resolve the connection issue between VS Code and your MAIA workspace.

If you are using a Mac or a Linux machine, be sure to set the correct permissions for the SSH key file using the following command:
```
chmod 600 <path_to_ssh_key>
```
And then try connecting to your MAIA workspace again.

**Q: Where can I find the link for my Remote Desktop and my SSH connection to my MAIA workspace?**

You can find the link for your Remote Desktop and SSH connection to your MAIA workspace on the MAIA Dashboard. Go to the Project Page and check on the `Remote Desktop` Table for the Remote Desktop link and for the SSH connection link.

**Q: I cannot remember my MAIA password. How can I reset it?**

If you cannot remember your MAIA password, you can reset it by clicking on the `Forgot Password` link on the MAIA login page. You will receive an email with instructions on how to reset your password. Follow the instructions in the email to set a new password for your MAIA account.
