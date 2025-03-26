# STEGO Codes for Python 3.10

For more details, please refer to the [original README](originREADME.md).

## Installation

1. **Set Up Python 3.10 and Pip**  
   ```bash
   conda install python=3.10
   conda install pip
   ```

2. **Install PyTorch and Related Libraries**  
   ```bash
   pip install torch==2.6.0 torchvision torchvision
   conda install cudatoolkit pytorch-lightning cython
   ```

3. **Install Additional Dependencies**  
   ```bash
   pip install opencv-python scikit-image matplotlib psutil tqdm scipy pandas tensorboard future kornia hydra-core wget seaborn easydict torchpq pyDeprecate azureml-core
   ```

4. **Clone and Install pydensecrf**  
   ```bash
   git clone https://github.com/lucasb-eyer/pydensecrf.git
   cd pydensecrf
   python setup.py install
   ```

5. **Install NVIDIA Apex**  
   ```bash
   conda install -c conda-forge nvidia-apex
   ```

## Code Adjustments for Python 3.10

- **DinoFeaturizer Update**  
  - Modified to accept weights without the `"teacher"` key.  
    See [modules.py, line 52](src/modules.py).

- **PyTorch Lightning Changes**  
  - Replace `pytorch_lightning.utilites` with `lightning_fabric.utilities` in:
    - [precompute_knns.py, line 11](src/precompute_knns.py)
    - [train_segmentation.py, line 12](src/train_segmentation.py)

- **Validation Function Update**  
  - Change `validation_epoch_end` to `on_validation_epoch_end` in [train_segmentation.py](src/train_segmentation.py).

- **Dataset Size Adjustment**  
  - Update `val_dataset` in [train_segmentation.py](src/train_segmentation.py) to use the size from `cfg.res` instead of a fixed value (320).

- **Removal of Deprecated Import**  
  - Remove `from torch._six import string_classes` in [utils.py](src/utils.py).

## Flexible Functionality Enhancements

- **CPU Compatibility**  
  - Adjustments made across multiple files to allow running on CPU devices.

- **Grayscale Image Support**  
  - Updated DirectoryDataset to read grayscale images ([data.py, line 97](src/data.py)).

- **Dataset Type Configuration**  
  - DirectoryDataset now uses the parameter `dataset_name` to determine the dataset type ([data.py, line 505](src/data.py)).

## TODO

- [ ] Package should be installable via pip.
- [ ] Enable support for import methods from [precompute_knns.py](src/precompute_knns.py) and [train_segmentation.py](src/train_segmentation.py).
- [ ] Update [environment.yml](environment.yml) accordingly.

