# ML Frameworks

## Basic installation through conda of PyTorch and TensorFlow and MONAI

We would like to provide you with a basic installation of PyTorch and TensorFlow and MONAI through conda. Your project may require a more specific installation, but this should be a good starting point.

### PyTorch

Make a new environment with Python 3.10 and install PyTorch with the following command:

```bash
conda create -n pytorch python=3.10
conda activate pytorch
conda install pytorch torchvision torchaudio cpuonly -c pytorch
```

### TensorFlow

Make a new environment with Python 3.10 and install TensorFlow with the following command:

```bash
conda create -n tensorflow python=3.10
conda activate tensorflow
conda install tensorflow -c conda-forge
```

### MONAI

Make a new environment with Python 3.10 and install MONAI with the following command:

```bash
conda create -n monai python=3.10
conda activate monai
conda install monai -c conda-forge
```


### Testing the installation

To test the installation, you can run the following commands:

```bash
python -c "import torch; print(torch.__version__)"
python -c "import tensorflow as tf; print(tf.__version__)"
python -c "import monai; print(monai.__version__)"
```

### Check GPU support

To check if your GPU is supported, you can run the following command:

```bash
python -c "import torch; print(torch.cuda.is_available())"
```

For tensorflow, you can run the following command:

```bash
python -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"
```


If you are unsure which machine learning framework you should use, start with PyTorch.

Here are some resources to help you get started:

- [PyTorch](https://pytorch.org/get-started/locally/)
- [TensorFlow](https://www.tensorflow.org/install)
- [MONAI](https://monai.io/getting-started/)


There are also many tutorials online that can help you get started such as on YouTube. Here is a list of some of the most popular ones:

- [PyTorch #1 ](https://www.youtube.com/watch?v=EMXfZB8FVUA&list=PLqnslRFeH2UrcDBWF5mfPGpqQDSta6VK4)
- [PyTorch #2 ](https://www.youtube.com/watch?v=2S1dgHpqCdk&list=PLhhyoLH6IjfxeoooqP9rhU3HJIAVAJ3Vz)
- [Tensorflow #1 ](https://www.youtube.com/watch?v=5Ym-dOS9ssA&list=PLhhyoLH6IjfxVOdVC1P1L5z5azs0XjMsb)
- [Tensorflow #2 ](https://www.youtube.com/watch?v=tPYj3fFJGjk&pp=ygUUdGVuc29yZmxvdyB0dXRvcmlhbHM%3D)
- [MONAI #1 ](https://www.youtube.com/watch?v=tPYj3fFJGjk&pp=ygUUdGVuc29yZmxvdyB0dXRvcmlhbHM%3D)
- [MONAI #2 ](https://www.youtube.com/watch?v=tPYj3fFJGjk&pp=ygUUdGVuc29yZmxvdyB0dXRvcmlhbHM%3D)
