%MNIST_digit_recognition/svm

% load training set and testing set

train_set = loadMNISTImages('train-images-idx3-ubyte')';
train_label = loadMNISTLabels('train-labels-idx1-ubyte');
test_set = loadMNISTImages('t10k-images-idx3-ubyte')';
test_label = loadMNISTLabels('t10k-labels-idx1-ubyte');


% training 
%tic;
model = fitcecoc(train_set,train_label);
%t1 = toc;
% classification
%tic;
predicted_label = predict(model,test_set);
result_test = predicted_label - test_label;
correct_num = length(find(result_test == 0));
accuracy = correct_num/10000;
%t2 = toc;
% disp(num2str(t1));
% disp(num2str(t2));