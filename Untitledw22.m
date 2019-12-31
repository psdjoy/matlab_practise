close all
clear all
clc
a=[0 1];
s=0;
x=0;
i=1;
for j=1:10
    s=x+i;
    a=[a s];
    x=i;
    i=s;
end
a
    