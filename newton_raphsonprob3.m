close all
clear all
clc
syms x;
fs=x^3-3*x^2+3*x-9;
f=matlabFunction(fs)
fdiff=diff(fs);
fder=matlabFunction(fdiff);
xk=0;
i=0;
while abs(f(xk))>0.0001
    xkp1=xk-(f(xk)/fder(xk));
    xk=xkp1;
    i=i+1;
end
xk
i