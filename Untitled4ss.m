close all
clear all
clc
x=input('input ');
s=0;
c=0;
while x>0
y=mod(x,10);
s=s*10+y;
x=x/10;
end
s
if x==s c=c+1;
end
c