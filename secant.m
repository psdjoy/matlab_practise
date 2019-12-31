clc;
clear all;
close all;
xk=6;
xkm1=7;
tol=0.001;
f=inline('x^2-8*x+15');
yk=f(xk);
ykm1=f(xkm1);
while abs(yk)>tol
    xkp1=xk-(yk*(xkm1-xk)/(ykm1-yk));
    ykp1=f(xkp1);
    xkm1=xk;
    ykm1=yk;
    xk=xkp1;
    yk=ykp1;
end
xk