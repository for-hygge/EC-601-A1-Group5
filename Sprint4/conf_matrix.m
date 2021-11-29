%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENG EC 601 Fall 2021
% plot confusion matrix and ROC curve for model 1
% <Tian Tan, tiant@bu.edu>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; 
clc;

%% Load data
% get the real testset label matrix
fprintf("==== Loading real labels of testset.\n");
realtest = readmatrix("newtest_data.csv");

% get the prediction matrix of testset
fprintf("==== Loading real labels of testset.\n");
predict = readmatrix("TT1_Animations_EffNet_Pytorch.csv");

%% we set the threshold to 0.5 to build a confusion matrix
% predict value <= 0.5, then labeled as 0, otherwise 1

[n,d] = size(predict);
pre_label = zeros(n,d);
for i = 1:n
    if predict(i,2) <= 0.5
        pre_label(i,1) = predict(i,1);
        pre_label(i,2) = 0;
    else
        pre_label(i,1) = predict(i,1);
        pre_label(i,2) = 1;
    end
end


%% construct the confusion matrix
disp("The confusion matrix is:");
confmatrix = confusionmat(realtest(:,2), pre_label(:,2));
disp(confmatrix);

acc = trace(confmatrix)/n;
disp("The accuracy is:");
disp(acc);

%% plot the ROC curve and get AUC

[prelabel,realtruth,AUC] = plot_roc(predict,realtest);
disp("The AUC is:");
disp(AUC);


%% plot ROC curve function
function [prelabel, realtruth,auc] = plot_roc(predict,realtest)

prelabel = predict(:,2);
realtruth = realtest(:,2);

% initial points (1.0,1.0)
x = 1.0;
y = 1.0;

% compute the # of positive sample and # of negative
pos_num = sum(realtruth==1);
neg_num = sum(realtruth==0);

% compute the step size
x_step = x/neg_num;
y_step = y/pos_num;

% sort the prediction, from large to small
% [prelabel, index] = sort(prelabel,'descend');
[prelabel, index] = sort(prelabel);
realtruth = realtruth(index);

% traverse the realtest matrix
% check each sample in prelabel, see if it's 1 or 0
for i = 1:length(realtruth)
    if realtruth(i)==1
        y = y - y_step;
    else
        x = x - x_step;
    end
    X(i)=x;
    Y(i)=y;
end

% plot the ROC curve
plot(X,Y,'-ro','LineWidth',2,'MarkerSize',3);
xlabel('False Positive Rate');
ylabel('True Positive Rate');
title('ROC curve');

% compute the area := AUC
auc = -trapz(X,Y);

end







