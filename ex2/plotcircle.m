function plotcircle(Xr,Yr,X,Y,a)
t = 0:0.1:2*pi;
x =X+Xr* cos(t);
y =Y+Yr* sin(t);
plot(x,y,'color',a) 