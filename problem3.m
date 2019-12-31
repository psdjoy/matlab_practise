close all
clear all
clc
x=[-4 -3 -2 -1 0 1 2 3 4 5];
y=[0.4 -3.4 0.4 0.4 -0.8 0.4 2.56 0.4 -6.8 0.4];
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
    B(i,1)=sum(x.^(i-1).*y);
end
c=A\B
Ym=0;
for i=1:p+1
    Ym=Ym+c(i)*x.^(i-1);
end
plot(x,y,'*')
hold on
plot(x,Ym)