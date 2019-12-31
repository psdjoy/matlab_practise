close all
clear all
clc
f=inline('x^2-4');
xu=[-1 5];
xl=[-4 2];
tol=0.001;
i=0;m=0;c=[];
for i=1:2
m=xu(i)-(f(xu(i))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))))
    if m>=0 & f(m)*f(xl(i))>0
        xl(i)=m;
    else xu(i)=m;
    end
    if m<=0 & f(m)*f(xu(i))>0
        xu(i)=m;
    else xl(i)=m;
    end
    m=xu(i)-(f(xu(i))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))))
    i=i+1;
end
c=[c m]
m=0;
end
c;
i