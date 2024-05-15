import math
import numpy as np
m1=2
k1=128
z=0
for k2 in range(1,30001,1):
    k2=k2/500
    for m2_1 in range(1,60,1):
        
        m2=m2_1/100
        mu=m2/m1
        f1=32
        w=8
        wn=math.sqrt(k1/m1)
        wa=math.sqrt(k2/m2)
        Xst=f1/k1
        a=w/wa
        b=wa/wn
        c=(w/wn)**2
        x1=float((1-a**2)*Xst)/((1+mu*b**2-c**2)*(1-a**2)-mu*b**2)
        x2=np.array([[k1+k2-w**2*m1 ,-k2],[-k2, k2-w**2*m2]])
        f=[[f1],[0]]
        x2=np.linalg.inv(x2)
        x2=x2.dot(f)
        x3=x2[0]

        if k2<76 and abs(x1)<0.1 and abs(x3)<0.1 and wa<7.6 and abs(x1)!=abs(x3):
            print('mu',mu,'wa',wa,'k2',k2,'m2',m2,'wa',wa,'x1',x1,'x3',x3)

