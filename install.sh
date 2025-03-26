conda install python=3.10
conda install pip  
pip install torch==2.6.0 torchvision torchvision
conda install cudatoolkit pytorch-lightning cython
pip install opencv-python scikit-image matplotlib psutil tqdm scipy pandas tensorboard future kornia hydra-core wget seaborn easydict torchpq pyDeprecate azureml-core
git clone https://github.com/lucasb-eyer/pydensecrf.git
cd pydensecrf
python setup.py install
conda install conda-forge::nvidia-apex

# unsolved
# pip install cupy # require python<3.10, while cython and pytorch-lightning require python>=3.10