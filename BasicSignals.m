
n=-20:20;
delta_n=n==0;
z=-20:20;
figure(1);
plot3(n,z,delta_n);
grid on

n=-5:1:5;
z=-5:1:5;
y=[zeros(1,7),ones(1,4)];
figure(2);
plot3(n,y,z);
grid on

x = -pi:0.01:pi;
figure(3)
plot(x,sin(x))
grid on

t = 5:-0.1:0 ;
y = 1*exp(-i*20*pi * t) + (4*exp(i*20*pi *t ) );
figure(4)
plot(t,real(y))
grid on