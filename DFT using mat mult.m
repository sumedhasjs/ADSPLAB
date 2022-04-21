clc;
close all;
clear all;
f=[1 2 3; 4 5 6; 7 8 9];
[rows, columns] = size(f);
N=3;
A=zeros(columns,rows);
for m=0:rows-1
    for n=0:columns-1
        A(m+1,n+1)=A(m+1,n+1) + exp(2*pi*j*m*n/N);
    end
end
F=A*f*A';