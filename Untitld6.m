clc;
clear all;
close all;
xk=2;
xkpp1=3;
tol=0.001;
f=inline('x^2-3') 
yk=f(xk);
ykpp1=f(xkpp1);
i=0;
while abs(f(xk))> tol
xkminus1=xk- (xk-xkpp1/yk-ykpp1)*yk;
ykminus1=f(xkminus1);
xkpp1=xk;
ykpp1=yk;
xk=xkminus1;
yk=ykminus1;
i=i+1;
end
root=xkminus1;
disp(i);
disp(root)