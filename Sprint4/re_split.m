%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENG EC 601 Fall 2021
% Reconstructed dataset
% <Tian Tan, tiant@bu.edu>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; 
clc;

%% Load dataset
% get the data matrix, data is 585x2 matrix
fprintf("==== Loading original dataset.\n");
data = readmatrix('train_labels');

%% Split the dataset
% randomly select 76 data as the test dataset
% 76 = 13% * 585
% test = randi(585,76,1);
[n,~] = size(data);

% get test set
test = zeros(76,2);
index = randperm(585,76)';
for i=1:76
    test(i,:) = data(index(i),:);
end

%% Using the selected test set
fprintf("==== Loading the selected test set.\n");
testset = readmatrix("newtest_data.csv");

% get training set
% 585 - 76 = 509
train = data;
t = 1; 

for j = 1:n
    for i = 1:76
        if train(j,1) == testset(i,1)
            train(j,:) = [0 0]; % set all zero
        end
    end
end

% remove the test dataset, thus get the training set
train(any(train,2)==0,:)=[];

