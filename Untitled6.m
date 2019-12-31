close all
clear all
clc
a=[2 3 4;5 6 7];
x=0;
y=0;
s=0;
for i=1:size(a,1)
    for j=1:size(a,2)
        s=s+a(i,j);
      if j==3 
          if i==1 x=s;
      else y=s;
          end
      end
    end
    s=0;
end
b=[x;y]
    