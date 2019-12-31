function [ s,x ] = Untit( a )
s=0;
x=0;
for i=1:size(a,1)
    for j=1:size(a,2)
        if i+j==4 s=s+a(i,j);
        else x=x+a(i,j);
        end
    end
end
end

