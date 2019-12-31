close all
clear all
clc
x=[1 2 3 4];
y=[0 3 8 15];
n=length(x);
g=0;v=1;
for i=1:n
    for j=1:n
        if i~=j v=conv(v,(poly(x(j))/(x(i)-x(j))));
        end
    end
    g=g+y(i)*v;
    v=1;
end
g
p=0;
syms x;
n=length(g);
for i=1:n
    p=p+g(i)*x^(n-i);
end
p
f=matlabFunction(p)
a=[-2 0];
b=[0 2];
tol=0.0001;
sol=[];
m=0;
for i=1:length(a)
    if (f(a(i))*f(b(i)))<=0
    while abs(f(m))>tol
        m=(a(i)+b(i))/2;
        if f(m)*f(a(i))>0
            a(i)=m;
        else b(i)=m;
        end
    end
    sol=[sol m];
    m=0;
    end
end
sol