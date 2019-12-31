close all;
clear all;
clc;
a=[];
s=1;
c=0;
x=input('input= ');
for i=1:x
    for j=1:i
        s=s*j;
    end
    c=c+s;
    s=1;
end
c
    