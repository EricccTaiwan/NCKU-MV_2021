clc,clear,close all
m1=2;
k1=128;
m2=0.55;
k2=31.726;
mu=m2./m1;
f1=32;
g=0:0.1:20;
xzeros=zeros(1,201);
for k=1:201
    w=g(k) ;
    f=[f1;0];
    z=[k1+k2-w.^2.*m1 -k2; -k2 k2-w.^2.*m2];
    x1=inv(z)*f;
    xzeros(k)=x1(1,1);
end
plot(g,xzeros)

