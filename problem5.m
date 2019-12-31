close all
clear all
clc
x=[1 2 3 4 5 6 7 8 9 10];
y=[9.97 5.09 3.27 2.53 1.99 1.7 1.4 1.27 1.11 0.98];
Y=log10(y);
X=log10(x);
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
Vs=10^c(1)
n=-c(2)
Ym=Vs./(x.^n);
plot(x,y,'*')
hold on
plot(x,Ym)