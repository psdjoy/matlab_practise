close all
clear all
clc
f=inline('2*x^7-3*x^6+5*x^5-4*x^4+4*x^3-x^2-3*x+2');
a=[2 -3 5 -4 4 -1 -3 2];
p=0;
syms x;
n=length(a);
for i=1:n
    p=p+a(i)*x^(n-i);
end
p
fs=matlabFunction(p)