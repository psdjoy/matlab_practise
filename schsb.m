close all
clear all
clc
x=[0.1 0.2 0.3 0.4 0.5];
y=[1.1 2.3 3.1 2.25 1.2];
xk=input('input= ');
m=1;
yk=0;
for i=1:length(x)-1
    if x(i)<=xk && x(i+1)>=xk
        m=i;
    end
end
xa=x(m);
xb=x(m+1);
ya=y(m);
yb=y(m+1);
yk=(ya*((xk-xa)/(xa-xb)))+(yb*((xk-xa)/(xb-xa)))+ya
