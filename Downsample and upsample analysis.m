% Original Signal
y1 = [1,2,3,4,5,6,7,8,9];
N1=length(y1);
W1=-2*pi:pi/10:2*pi;
for x1=1:length(W1)
    sum1=0;
    for n1=0:N1-1
        sum1=sum1 +y1(n1+1)*exp(-1i*W1(x1)*n1);
    end
    Y_freq1(x1)=sum1;
end

figure(1);
plot(W1, real(Y_freq1));
xlabel('Frequency Axis');
ylabel('Amplitude');
title('Original Signal');

% Upsampling
y2=up(y1,2);
N2=length(y2);
W2=-2*pi:pi/10:2*pi;
for x2=1:length(W2)
    sum2=0;
    for n2=0:N2-1
        sum2=sum2 +y2(n2+1)*exp(-1i*W2(x2)*n2);
    end
    Y_freq2(x2)=sum2;
end

figure(2);
plot(W2, real(Y_freq2));
xlabel('Frequency Axis');
ylabel('Amplitude');
title('Upsampled Signal');

% Downsampled Signal
y3=down(y1,2);

N3=length(y3);
W3=-2*pi:pi/10:2*pi;
for x3=1:length(W3)
    sum3=0;
    for n3=0:N3-1
        sum3=sum3 +y3(n3+1)*exp(-1i*W3(x3)*n3);
    end
    Y_freq3(x3)=sum3;
end

figure(3);
plot(W3, real(Y_freq3));
xlabel('Frequency Axis');
ylabel('Amplitude');
title('Downsampled Signal');