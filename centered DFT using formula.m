clc;
close all;
clear all;
f=[1 7 5 1;4 6 7 3; 3 1 1 6; 2 9 2 8];
[rows, columns] = size(f);
if(rows==columns)
    N=rows
else 
    N=max([rows,columns])
end
k=floor(N/2)+1
A=zeros(N,N);
for u=0:columns-1
    for v=0:rows-1
        sum = 0
        for x=0:columns-1
            for y=0:rows-1
                sum = sum + ( f((x+1),(y+1)) * exp((-1j*2*pi*(u+1-k)*(x+1-k))/columns + (-1j*2*pi*(v+1-k)*(y+1-k))/rows) )
            end
        end
        A(u+1,v+1) = A(u+1,v+1)+ sum
    end
end

