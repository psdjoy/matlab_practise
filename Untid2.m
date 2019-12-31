close all
clear all
clc
a=[4 -3 2];
p=0;
syms x;
n=length(a);
for i=1:n
    p=p+a(i)*x^(n-i);
end
p
fs=matlabFunction(p)
