clc;
clear all
len=4;
h0=ones(1, len)
for k=1:len
    for n=1:len
        h(k,n)=exp(-1i*2*pi*(k-1)*(n-1)/len)*h0(n);
    end
end
disp(h)

w=-pi:pi/100:pi;
for i=1:len
    for k=1:length(w)
        sum=0;
        for n=1: length(h)
            sum=sum+h(i,n)*exp(-1i*w(k)*(n));
        end
        H_T(k)=sum;
    end
    plot(abs(H_T))
    hold on
end
