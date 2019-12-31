close all
clear all
clc
x=[0 1 2 3 4 5 6 7 8 9 10];
y=[1 0.54 -0.42 -0.99 -0.66 0.28 0.96 0.75 -0.15 -0.91 -0.84];
n=length(x);
p=0;v=1;
for i=1:n
    for j=1:n
        if i~=j v=conv(v,(poly(x(j))/(x(i)-x(j))));
        end
    end
    p=p+y(i)*v;
    v=1;
end
plot(x,y,'*')
hold on
plot(x,polyval(p,x))
