close all
clear all
clc
xl=[];
xu=[];
f=inline('cos(x)+sin(x)');
for i=-10:9
    xl=[xl i];
    i=i+1;
    xu=[xu i];
end
m=1;
c=[];
for i=1:length(xu)
    if f(xl(i))*f(xu(i))<0
m=xu(i)-(f(xu(i))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))));
while abs(f(m))>0.000001
    if f(m)*f(xl(i))>0
        xl(i)=m;
    else xu(i)=m;
    end
   m=xu(i)-(f(xu(i))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))));
end
c=[c m];
m=1;
    end
end
c