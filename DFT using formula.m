clc;
close all;
clear all;
f=[1 2 3; 4 5 6; 7 8 9];
[rows, columns] = size(f);
F=zeros(columns,rows);
for u=0:columns-1
    for v=0:rows-1
        sum = 0
        for x=0:columns-1
            for y=0:rows-1
                sum = sum + ( f((x+1),(y+1)) * exp((-1j*2*pi*u*x)/columns + (-1j*2*pi*v*y)/rows) )
            end
        end
        F(u+1,v+1) = F(u+1,v+1)+ sum
    end
end
