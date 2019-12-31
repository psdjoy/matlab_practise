close all
clear all
clc
a=[];
b=[];
for i=-10:9
    a=[a i];
    i=i+1;
    b=[b i];
end
a;
b;
f=inline('cos(x)');
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
