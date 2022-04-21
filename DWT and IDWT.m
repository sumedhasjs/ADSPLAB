close;
clear all;

x = [[1 2 3 4];[4 3 2 1];[1 2 3 4];[4 3 2 1]]
h0 = [1 1];
h1 = [1 -1];
[r, c] = size(x);
% problem :
% in vertical convolution.

%level 1 DWT for 2D signals.

x11 = convn(x,h0,'same') 
%here same is used to return the central part of the convolution.
x1 = zeros(r,c/2);
%for downsampling
for i=1:c/2
    for j = 1:r
        x1(j,i) = x11(j,2*i-1);
    end
end


x21 = convn(x,h1,'same') 
%here same is used to return the matrix same size of x
x2 = zeros(r,c/2);
%for downsampling
for i=1:c/2
    for j = 1:r
        x2(j,i) = x21(j,2*i-1);
    end
end
x2

x31 = convn(x1,h0','same')
[r1,c1] = size(x31);
for i = 1:c1
    for j = 1:r1/2
        x3(j,i) = x31(2*j-1,i);
    end
end


x41 = convn(x1,h1','same')
[r1,c1] = size(x41);
for i = 1:c1
    for j = 1:r1/2
        x4(j,i) = x41(2*j-1,i);
    end
end


x51 = convn(x2,h0','same')
[r1,c1] = size(x51);
for i = 1:c1
    for j = 1:r1/2
        x5(j,i) = x51(2*j-1,i);
    end
end


x61 = convn(x2,h1','same')
[r1,c1] = size(x61);
for i = 1:c1
    for j = 1:r1/2
        x6(j,i) = x61(2*j-1,i);
    end
end

x3
x4
x5
x6

g0=[1 1]
g1=[-1 1]

[r2,c2]=size(x3)
x71=zeros(2*r2,c2);
for i = 1:c2
    for j = 1:2*r2
        if rem(j,2)==0
            x71(j,i) =x3(j/2,i);
        end
    end
end
x7=convn(x71,g0','same')
x7

[r2,c2]=size(x4)
x81=zeros(2*r2,c2);
for i = 1:c2
    for j = 1:2*r2
        if rem(j,2)==0
            x81(j,i) =x4(j/2,i);
        end
    end
end
x8=convn(x81,g1','same')

[r2,c2]=size(x5)
x71=zeros(2*r2,c2);
for i = 1:c2
    for j = 1:2*r2
        if rem(j,2)==0
            x91(j,i) =x5(j/2,i);
        end
    end
end
x9=convn(x91,g0','same')


[r2,c2]=size(x6)
x101=zeros(2*r2,c2);
for i = 1:c2
    for j = 1:2*r2
        if rem(j,2)==0
            x101(j,i) =x6(j/2,i);
        end
    end
end
x10=convn(x101,g1','same')

x111=x7+x8;
x121=x9+x10;

[r2,c2]=size(x111)
x112=zeros(r2,2*c2);
for i = 1:2*c2
    for j = 1:r2
        if rem(i,2)==0
            x112(j,i) =x111(j,i/2);
        end
    end
end
x11=convn(x112,g0,'same')

[r2,c2]=size(x121)
x122=zeros(r2,2*c2);
for i = 1:2*c2
    for j = 1:r2
        if rem(i,2)==0
            x122(j,i) =x121(j,i/2);
        end
    end
end
x12=convn(x122,g1,'same')

x_final=x11+x12
x_final
