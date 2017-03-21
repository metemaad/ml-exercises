function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

hteta=X*theta;
b=hteta-y;
J=(1/(2*m))*sum((b).*(b))+(lambda/(2*m))* (sum(theta.*theta)-theta(1).*theta(1));
% You need to return the following variables correctly 

grad=(1/m)*(b'*X);
xa=(lambda/m)*theta';
for k=2:size(theta,1)
    grad(k)=grad(k)+xa(k);
end;




% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
