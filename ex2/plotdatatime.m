function plotdatatime(X)
figure;hold on;grid on;

[m, n] = size(X);
for i=1:m    plotcircle(X(i,2)/2,X(i,4)/2,X(i,1)+(X(i,2)/2),X(i,3)+(X(i,4)/2),'b'); end;
