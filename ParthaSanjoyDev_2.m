close all
clear all
clc
x=[1 2 3 4 5];
y=[0.5 1.7 3.4 5.7 8.4];
X=log10(x);
Y=log10(y);
p=input('order= ');
for i=1:p+1
    for j=1:p+1
        if i==1 & j==1
            a(i,j)=length(X);
        else
            a(i,j)=sum(X.^(i+j-2));
        end
    end
end
for i=1:p+1
    b(i,1)=sum(X.^(i-1).*Y);
end
c=a\b
b2=c(2)
a2=10^c(1)
ym=a2* x.^b2;
plot(x,y,'*')
hold on
plot(x,ym)

