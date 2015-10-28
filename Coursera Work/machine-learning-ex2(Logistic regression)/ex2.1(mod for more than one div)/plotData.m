function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

c0 = find(y == 0);
c1 = find(y == 1); 
c2 = find(y == 2); 
c3 = find(y == 3); 

%plot the data

plot(X(c0,1) , X(c0,2) , 'k+','LineWidth', 2,'MarkerSize', 7);
plot(X(c1,1) , X(c1,2) , 'ro','LineWidth', 2,'MarkerSize', 7);
plot(X(c2,1) , X(c2,2) , 'gs','LineWidth', 2,'MarkerSize', 7);
plot(X(c3,1) , X(c3,2) , 'b^','LineWidth', 2,'MarkerSize', 7);

% =========================================================================


hold off;

end
