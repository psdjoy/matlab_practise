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
for i=1:2
m=xu(i)-(f(xu(i))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))))
end