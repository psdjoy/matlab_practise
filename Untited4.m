close all
clear all
clc
f=inline('x^2-4');
xl=[-4 2];
xu=[0 5]; c=[];
for i=1:2
m=xu(i)-(f(xu(i))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))));
while abs(f(m))>0.000001
    if f(m)*f(xl(i))>0
        xl(i)=m;
    else xu(i)=m;
    end
   m=xu(i)-(f(xu(i))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))));
end
c=[c m];
m=0;
end
c