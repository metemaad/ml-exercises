function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

Hteta=sigmoid(X*theta);
for i=1:m J=J+(-y(i)*log(Hteta(i))-(1-y(i))*log(1-Hteta(i))); end;
ts=0;
for j=2:size(theta,1) ts=ts+theta(j)^2; end;
J=(1/m)*J+(lambda/(2*m))*ts;

for i=1:m 
    for j=1:size(theta,1) grad(j)=grad(j)+(Hteta(i)-y(i))*X(i,j); end;
    
     end;
      grad=grad/m;
 for i=2:size(theta,1) grad(i)=grad(i)+(lambda/m)*theta(i); end;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
