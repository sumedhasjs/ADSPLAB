img=imread('cameraman.tif');
figure(1)
imshow(img,[])

imgn=imnoise(img,'gaussian',0,0.02)
figure(2)
imshow(imgn,[])

[ll,lh,hl,hh]=dwt2(imgn,'db1');
[thr,p,q]=ddencmp('den','wv', imgn)

a1=abs(ll)>thr
ll1=a1.*ll

a2=abs(lh)>thr
lh1=a2.*lh

a3=abs(hl)>thr
hl1=a3.*hl

a4=abs(hh)>thr
hh1=a4.*hh

imgf=idwt2(ll1,lh1,hl1,hh1,'db1');
figure(3)
imshow(imgf,[])
