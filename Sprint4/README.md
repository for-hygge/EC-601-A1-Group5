# Sprint 4 -  Group 5: RSNA-MICCAI Brain Tumor Radiogenomic Classification
This is the Sprint 4 of the project. In this Sprint, we are committed to test six models we trained in Sprint 3. 
Then, we focused on the analysis of the results and tried to conclude which model is the best. 

## Reconstruct dataset
Our project is based on a kaggle competition which has closed already. However, in the process of testing, we find that the competition only offers unlabeled 
test dataset. In other words, we can not get the real labels of the test dataset to evaluate our predications.</br>
With reading notes of other participants in detail, we learn that, in competition, each participant use their own trained model to predict the test set. 
They need to submit the result of the test set and then, the competition holder/reviewer will use the real labels and apply the ROC curve method to evaluate
the result of each participant.</br>
We learned that in competition, there are 585 training data samples and 87 test data samples. There are 672 data in total, 13% of which are test samples. 
In order to evaluate our models, we re-split the training dataset which is labeled with the same ratio to construct a new dataset. Thus, we write a matlab 
function (re_split.m) to randomly select 76 (13% x 585) data from the training set as a test set.




