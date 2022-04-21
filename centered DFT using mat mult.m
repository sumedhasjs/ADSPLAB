clc;
close all;
clear all;
f=[0 0 0 0 0; 0 1 7 5 1; 0 4 6 7 3;0 3 1 1 6;0 2 9 2 8];
[rows, columns] = size(f);
if(rows==columns)
    N=rows
else 
    N=max([rows,columns])
end
k=floor(N/2)+1
A=zeros(N,N);
for m=0:N-1
    for n=0:N-1
        A(m+1,n+1)=A(m+1,n+1) + exp(2*pi*j*(m+1-k)*(n+1-k)/N);
    end
end
F=A * f * A';