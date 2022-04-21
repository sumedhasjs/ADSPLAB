clc;
close all;
clear all;
f=[1 2 3; 4 5 6; 7 8 9];
[rows, columns] = size(f);
RowWise=zeros(columns,rows)
for u=0:rows-1
    for v=0:columns-1
        for y = 0:rows-1
            RowWise(u+1,v+1) = RowWise(u+1,v+1) + (f(u+1,y+1)*exp((-j)*2*pi*v*y/rows));
        end
    end
end

ColumnWise=zeros(columns,rows)
for u=0:rows-1
    for v=0:columns-1
        for x = 0:columns-1
            ColumnWise(u+1,v+1) = ColumnWise(u+1,v+1) + (RowWise(x+1,v+1)*exp((-j)*2*pi*x*u/columns));
        end
    end
end