# Sprint 4 -  Group 5: RSNA-MICCAI Brain Tumor Radiogenomic Classification
This is the Sprint 4 of the project. In this Sprint, we are committed to test six models we trained in Sprint 3. 
Then, we focused on the analysis of the results and tried to conclude which model is the best. 

## Reconstruct Dataset
- re_split.m
- newtest_data.csv
- newtrain_data.csv</br>
Our project is based on a kaggle competition which has closed already. However, in the process of testing, we find that the competition only offers unlabeled 
test dataset. In other words, we can not get the real labels of the test dataset to evaluate our predications.</br>
With reading notes of other participants in detail, we learn that, in competition, each participant use their own trained model to get the predication of test set which is a value between 0 and 1. 
They need to submit the result of the test set and then, the competition holder/reviewer will use the real labels and apply the ROC curve method to evaluate the result of each participant.</br>
We learned that in competition, there are 585 training data samples and 87 test data samples. There are 672 data in total, 13% of which are test samples. 
In order to evaluate our models, we re-split the training dataset which is labeled with the same ratio to construct a new dataset. Thus, we write a matlab function (re_split.m) to randomly select 76 (13% x 585) data from the training set as a test set (newtest_data.csv).

## ROC Curve Method
> A receiver operating characteristic curve, or ROC curve, is a graphical plot that illustrates the diagnostic ability of a binary classifier system as its discrimination threshold is varied. The ROC curve is created by plotting the true positive rate (TPR) against the false positive rate (FPR) at various threshold settings.
- condition positive (P): 
The number of real positive cases in the data
- condition negative (N): 
The number of real negative cases in the data
- true positive (TP): 
A test result that correctly indicates the presence of a condition or characteristic
- false positive (FP): 
A test result which wrongly indicates that a particular condition or attribute is present</br>
- TPR = TP/P;  FPR = FP/N
> AUC stands for "Area under the ROC Curve." That is, AUC measures the entire two-dimensional area underneath the entire ROC curve (think integral calculus) from (0,0) to (1,1). AUC ranges in value from 0 to 1. A model whose predictions are 100% wrong has an AUC of 0.0; one whose predictions are 100% correct has an AUC of 1.0.

In the competition, the higher the AUC value, the higher the score of the paricipant. And the value of threshold changes in steps of 0.1 between 0-1. When the prediction result is greater than threshold, our prediction label is 1, otherwise it is 0.







