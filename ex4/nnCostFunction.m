function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
k=num_labels;
Yp=zeros(size(y,1),k);                               
for i=1:k    Yp(find(y==i),i)=1; end;

Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)),hidden_layer_size, (input_layer_size + 1));
Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end),num_labels, (hidden_layer_size + 1));
m = size(X, 1);

A1=[ones(m,1) X];
Z2=Theta1*A1';
A2=sigmoid(Z2);
A2=A2';
A2=[ones(size(A2,1),1) A2];
Z3=Theta2*A2';
A3=sigmoid(Z3);

J = 0;
Yp=Yp';
J=J+(1/m)*sum(sum(-Yp.*log(A3)-(1-Yp).*(log(1-A3))));
T1=reshape(Theta1(hidden_layer_size+1:end),hidden_layer_size,input_layer_size);
T2=reshape(Theta2(num_labels+1:end),num_labels,hidden_layer_size);
J=J+(lambda/(2*m))*(sum(sum(T1.*T1))+sum(sum(T2.*T2)));

Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));
d3=A3-Yp;
d2=T2'*d3.*sigmoidGradient(Z2);

de1=d2*A1;
de2=d3*A2;

D1=(1/m)*de1+(lambda/m)*Theta1;
D1(:,1)=(1/m)*de1(:,1);
D2=(1/m)*de2+(lambda/m)*Theta2;
D2(:,1)=(1/m)*de2(:,1);

Theta1_grad=D1;
Theta2_grad=D2;

grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
