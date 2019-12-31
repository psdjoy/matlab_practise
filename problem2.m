close all
clear all
clc
x=[1 2 3 4 5 6 7 8 9 10];
y=[0.1 0.38 0.92 1.58 2.53 3.71 4.83 6.36 8.09 10.1];
X=log10(x);
Y=log10(y);
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
R=(10^(-c(1)))
n=c(2)
Ym=(x.^n)/R;
plot(x,y,'*')
hold on
plot(x,Ym)