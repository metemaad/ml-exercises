function [theta]=getregresionlogisticparam(X,y)


[m, n] = size(X);
X = [ones(m, 1) X];
initial_theta = zeros(n + 1, 1);
[cost, grad] = costFunction(initial_theta, X, y);
options = optimset('GradObj', 'on', 'MaxIter', 400,'Diagnostics','off','Display','off');
[theta, cost] = 	fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
