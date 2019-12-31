close all
clear all
clc
s=0;
for i=1:1000
    s=s+i;
end
avg=s/1000
s=0;
for i=1:1000
    s=s+(i-avg)^2;
end
sigma=(1/1000)*s