close all
clear all
clc
a=[2 3 4;5 6 7]
s=0;
for j=1:size(a,2)
      for i=1:size(a,1)
        s=s+a(i,j);
      if i==2 
          if j==1 x=s;
          elseif j==2 y=s;
          else z=s;
          end
      end
    end
    s=0;
end
b=[x y z]   