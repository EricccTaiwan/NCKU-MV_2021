m=10;                                %質量(kg)
k=40000;                          %彈簧常數(N/m)
knum=2*pi/1.2;             %波數
v=0;                                   %初始速率(m/s)
theta=1;                            %damping ratio阻尼比
wn=sqrt(k/m);              %自然頻率(rad/s)
x1=zeros(1,201);          %設定x1的零矩陣
y1=zeros(1,201);          %設定y1的零矩陣
for i=1:201                     
    v=v+0.1;
    Mb=sqrt((1+(2*theta*knum*v/wn).^2)/((1-(knum*v/wn).^2).^2+(2*theta*knum*v/wn).^2));
    if Mb<2                       %當Mb<2，將v取但x(i)，Mb取代y1(i)
        x1(i)=v;
        y1(i)=Mb;            
    else       
        break 
    end
end
semilogy(x1,y1);
xlabel('V(m/s)');
ylabel('Mb');
grid on;