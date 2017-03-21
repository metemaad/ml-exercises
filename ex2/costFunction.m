function [J, grad] = costFunction(theta, X, y)
m = length(y); 
J = 0;
grad = zeros(size(theta));
Hteta=sigmoid(X*theta);
for i=1:m J=J+(-y(i)*log(Hteta(i))-(1-y(i))*log(1-Hteta(i))); end;
J=(1/m)*J;
for i=1:m 
    for j=1:size(theta,1) grad(j)=grad(j)+(Hteta(i)-y(i))*X(i,j); end;
     end;
grad=grad/m;
end
