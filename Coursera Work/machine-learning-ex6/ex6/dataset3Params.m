function [C, Sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
c = 0.01;
sigma = 0.01;

min_pred_err = Inf;

while( c <= 30) 
	sigma = 0.01;
	while(sigma<=30)
		model = svmTrain(X, y, c, @(x1, x2) gaussianKernel(x1, x2, sigma));
		predictions = svmPredict(model, Xval);
		pred_err = mean(double(predictions ~= yval));
		if(pred_err < min_pred_err)
			C = c;
			Sigma = sigma;
			min_pred_err = pred_err;		
		endif;			
		sigma = sigma*3;	
	endwhile;
c = c * 3;
endwhile;


% =========================================================================

end
