close all
clear all
clc
x=[0 1 2 3 4 5 6];
y=[0 1 4 9 16 25 36];
xk=[3 6]
n=length(x);
p=0;v=1;c=[];
for k=1:length(xk)
for i=1:n
    for j=1:n
       if i~=j v=v*((x(k)-x(j))/(x(i)-x(j)));
       end
    end
   p=p+y(i)*v
   v=1;
end
disp(p);
p=0;
end
