close all
clear all
clc
x=[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
y=[0.6*10^-9 4.2*10^-9 29*10^-9 176*10^-9 10^-6 7.3*10^-6 40*10^-6 252*10^-6 2.3*10^-3 26*10^-3];
Y=log(y);
p=input('input no of order= ');
for i=1:p+1
    for j=1:p+1
        if i==1 & j==1
            A(i,j)=length(x);
        else A(i,j)= sum(x.^(i+j-2));
        end
    end
end
for i=1:p+1
    B(i,1)=sum(x.^(i-1).*Y);
end
c=A\B
Is=exp(c(1));
nVt=1/c(2);
Ym=Is*exp(x/nVt);
plot(x,y,'*')
hold on
plot(x,Ym)