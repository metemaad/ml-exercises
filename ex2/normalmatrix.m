function [XNorm Mid Std]=normalmatrix(X)
[m n]=size(X);
Mid=mean(X);
Std=std(X);
for i=1:n 
    X(:,i)=(X(:,i)-Mid(i))/Std(i); 
end;
XNorm=X;

