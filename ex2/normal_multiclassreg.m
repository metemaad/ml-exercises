function [Theta m s]=normal_multiclassreg(X,y,class)
X=[X X(:,2).*X(:,4)];
%X=[X sqrt(((X(:,1)+X(:,2)./2)).*((X(:,1)+X(:,2)./2))+((X(:,3)+X(:,4)./2)).*((X(:,3)+X(:,4)./2)))]
%X=[X X(:,5).*X(:,5)];
[Xnf m s]=normalmatrix(X);
Xnf=[Xnf(:,6) Xnf(:,5)];

Theta=multiclassRLparam(Xnf,y,class);