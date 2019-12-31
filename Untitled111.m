close all
clear all
clc
a=[1 -2 3;3 0 4;-8 9 -11]
for i=1:size(a,1)
    for j=1:size(a,2)
    if a(i,j)<0 a(i,j)=0;
    else a(i,j)=1;
    end
    end
end
a