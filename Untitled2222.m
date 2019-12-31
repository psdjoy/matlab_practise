close all
clear all
clc
a=[12 32 14 10];
s=0;
for i=1:length(a)
    s=s+a(i);
end
n=a(1);
for i=1:length(a)
    if n>a(i) n=a(i);
    end
end
n
x=(s-n)/3