close all
clear all
clc
x=[-4 -3 -2 -1 0 1 2 3 4];
y=[14 7 2 -1 -2 -1 2 7 14];
xk=3.5;
n=length(x);
p=0;
v=1;
for i=1:n
    for j=1:n
        if i~=j v=conv(v,(poly(x(j))/(x(i)-x(j))));
        end
    end
    p=p+y(i)*v;
    v=1;
end
p