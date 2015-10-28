function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
n = size(X,2);
m = size(X,1);
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

for j= 1:n
    mu(1,j) = mean(X(:,j));
    sigma(1,j) = std(X(:,j));
    X_norm(:,j) = X(:,j) - (mu(1,j) .* ones(m,1));   
    X_norm(:,j) = X_norm(:,j) ./ (sigma(1,j) .* ones(m,1));
   % sigmaX(:,j) = sigma(1,j);
end

%fprint('mu and sigma for 1 %d %');

%X_norm = X_norm ./ sigmaX;


% ============================================================

end
