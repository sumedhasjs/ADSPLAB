x=[1 2 3 4 5 6 7 8]
h0=[1 1]
h1=[1 -1]
g0=[1 1]
g1=[-1 1]
x11=conv(x,h0);
x12=down(x11,2)
x21=conv(x,h1)
x22=down(x21,2)

x31=up(x12,2)
x32=conv(x31,g0)
x41=up(x22,2)
x42=conv(x41,g1)
xr=x32 + x42