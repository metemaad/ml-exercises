function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;


% Find Indices of Positive and Negative Examples

plot(X(find(y==0), 1), X(find(y==0),2), 'ko','LineWidth', 2,'MarkerSize', 7);
plot(X(find(y==1), 1), X(find(y==1),2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
plot(X(find(y==2), 1), X(find(y==2),2), 'ko', 'MarkerFaceColor', 'blue', 'MarkerSize', 7);
plot(X(find(y==3), 1), X(find(y==3),2), 'ko', 'MarkerFaceColor', 'red', 'MarkerSize', 7);
plot(X(find(y==4), 1), X(find(y==4),2), 'ko', 'MarkerFaceColor', 'green', 'MarkerSize', 7);


% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%









% =========================================================================



hold off;

end
