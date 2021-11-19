# Some Example from Kaggle

Paths and libraries adjusted for [SCC](https://scc-ondemand.bu.edu/)

Run notebooks in the same path as datasets. (/projectnb/ece601/A1-Group5-BrainTumor/dir-brain-tumor/)

Initialize SCC environment by 

> source initial.sh

and 

> source set_python_path.sh

# Some parameters
EXPLORATORY DATA ANALYSIS (EDA)
1. EDA with Animations and Modeling
2. Brain Tumor 3D 
3. Brain Tumor EDA with score
4. Brain Tumor 3D Multimodal CNN - All MRI Type


## Test Split
1. train_test_split(test_size=0.2)
2. StratifiedKFold(n_split=5,shuffle=True)
3. train_test_split(test_size=0.2)
4. StratifiedKFold(n_split=5,shuffle=True)

## MRI Technology
1. FLAIR, T1w, T1wCE
2. FLAIR
3. FLAIR, T1w, T1wCE
4. FLAIR, T1w, T1wCE, T2W

## Data Sampling
1. 10 Uniformly distributed slices across the 3D image
2. 64 centered consecutive image
3. 10 Uniformly distributed slices across the 3D image
4. Middle 24 images

## Image resizing
1. 256x256
2. 256x256
3. 256x256
4. 120x120

## Model
1. efficientnet-b0
2. efficientnet in keras?
3. efficientnet-b0
4. 4-input CNN model

## Optimizer
1. Adam(lr=0.001)
2. Adam, learning_rate=lr_schedule, lr_schedule=ExponentialDecay(0.0001,decay_rate=0.96)
3. Adadelta(lr=0.001)
4. (default)

## Criterion
1. binary_cross_entropy_with_logits
2. binary_crossentropy
3. binary_cross_entropy_with_logits
4. (default)

## Accuracy (Train/Validate): 
1.
2.
3.
4. 0.7030

# Reference:

* [🧠Brain Tumor🧠 - EDA with Animations and Modeling](https://www.kaggle.com/ihelon/brain-tumor-eda-with-animations-and-modeling)	
* [🧠Brain Tumor 3D Training](https://www.kaggle.com/ammarnassanalhajali/brain-tumor-3d-training)
* [Brain Tumor EDA with score](https://www.kaggle.com/blade001/brain-tumor-eda-with-score)
* [Brain Tumor 3D Multimodal CNN - All MRI Type] (https://www.kaggle.com/michaelfumery/brain-tumor-3d-multimodal-cnn-all-mri-type/)
* [Meeting Minutes on Google Doc](https://docs.google.com/document/d/1po9hrZAp04lbLL3IngvLaURMMgkMC6j_7K1OG1VMwKI/edit)
