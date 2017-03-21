function a=classifier(Theta,X,mid,s)
m=size(Theta,2);
[b n]=size(X);
prob=zeros(m+1,1);
for i=1:n 
    X(:,i)=(X(:,i)-mid(i))/s(i); 
end;
X=[1 X(:,6) X(:,5)];
tmp=1;
for i=1:m 
    prob(i) = sigmoid(X* Theta(:,i))*tmp;
    tmp=tmp-prob(i);

end;
prob(m+1)=tmp;
a=zeros(2,1);

[c,i]=max(prob);
a(1)=c;
a(2)=i;
end

%plot(X(1,2), X(1,3), 'k+', 'MarkerFaceColor', 'black', 'MarkerSize', 7);
%a=sprintf('\leftarrow Class:%d',i);

%text(, 'HorizontalAlignment','left')
%text(X(1,2), X(1,3),'\leftarrow C','FontSize',18)
%c=l;
%    i=k;


