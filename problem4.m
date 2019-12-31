close all
clear all
clc
x=[773.5 786 797.5 810 820 834];
y=[1.63 2.95 4.19 8.13 14.9 22.2];
X=x.^-1;
Y=log(y);
p=input('input no of order= ');
for i=1:p+1
    for j=1:p+1
        if i==1 & j==1
            A(i,j)=length(X);
        else A(i,j)= sum(X.^(i+j-2));
        end
    end
end
for i=1:p+1
    B(i,1)=sum(X.^(i-1).*Y);
end
c=A\B;
R=8314;
A=exp(c(1))
Ea=-(R*c(2))
Ym=A*exp(-Ea./(x.*R))
plot(x,y,'*')
hold on
plot(x,Ym)