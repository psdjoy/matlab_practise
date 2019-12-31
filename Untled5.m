close all
clear all
clc
syms x;
fs=x^2-3;
f=matlabFunction(fs)
fdiff=diff(fs);
fder=matlabFunction(fdiff);
xk=3;
i=0;
while abs(f(xk))>0.001
    xkp1=xk-(f(xk)/fder(xk));
    xk=xkp1;
    i=i+1;
end
xk
i