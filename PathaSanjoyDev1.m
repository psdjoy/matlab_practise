close all
clear all
clc
x=[0 1 2 3 4 5];
y=[2.1 7.7 13.6 27.2 40.9 61.1];
p=input('order= ');
for i=1:p+1
    for j=1:p+1
        if i==1 & j==1
            a(i,j)=length(x);
        else
            a(i,j)=sum(x.^(i+j-2));
        end
    end
end
for i=1:p+1
    b(i,1)=sum(x.^(i-1).*y);
end
c=a\b
ym=0;
for i=1:p+1
    ym=ym+c(i).*x.^(i-1);
end
ym
plot(x,y,'*');
hold on
plot(x,ym);
