function [theta]=multiclassRLparam(X,y,Classno)


Yn=zeros(1,size(y,1));
[m, n] = size(X);
Yn(find(y==0))=1;

THETA=zeros(n + 1,Classno-1);
figure;
hold on
plot(X(find(y==0), 1), X(find(y==0),2), 'ko','LineWidth', 2,'MarkerSize', 7);
plot(X(find(y==1), 1), X(find(y==1),2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
plot(X(find(y==2), 1), X(find(y==2),2), 'ko', 'MarkerFaceColor', 'blue', 'MarkerSize', 7);
plot(X(find(y==3), 1), X(find(y==3),2), 'ko', 'MarkerFaceColor', 'red', 'MarkerSize', 7);
plot(X(find(y==4), 1), X(find(y==4),2), 'ko', 'MarkerFaceColor', 'green', 'MarkerSize', 7);


for i=1:Classno-1
    
THETA(:,i)= getregresionlogisticparam(X,Yn);
t=-10:1:200000;
at=(-THETA(1,i)-THETA(2,i)*t)/THETA(3,i);
plot(t,at);

X=[X(find(y~=i-1),:)];
y=[y(find(y~=i-1))];

Yn=zeros(1,size(y,1));
Yn(find(y==i))=1;


end;



theta=THETA;