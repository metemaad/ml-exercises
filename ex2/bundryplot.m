function bundryplot(Theta)
hold on
%[m n] = size(theta);
%x=-2:0.1:2;
%y=-4:0.1:4;
for k=1:5
for i=-2:0.01:2
    for j=-4:0.01:4
        Xn=[1 i j];
        if ((sigmoid(Xn* Theta(:,k))<0.55)&&(sigmoid(Xn* Theta(:,k))>0.45))
            if (k==1) plot(i,j, 'color','r'); end;
                if (k==2) plot(i,j, 'color','g');end;
                if (k==3) plot(i,j, 'color','b');end;
                if (k==4) plot(i,j, 'color','y');end;
                if (k==5) plot(i,j, 'color','b');end;
                
        end;
    end;
end;
end;