clc,clear,close all
m1=2;
k1=128;
m2=0.55;
k2=31.726;
mu=m2./m1;
f1=32;
w=0:0.1:20;
wn=sqrt(k1./m1);
wa=sqrt(k2./m2);
Xst=f1./k1;
a=w./wa;
b=wa./wn;
c=(w./wn).^2;
x1=((1-a.^2)*Xst)./((1+mu.*b.^2-c.^2).*(1-a.^2)-mu.*b.^2);
plot(w,x1)