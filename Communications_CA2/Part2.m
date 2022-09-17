% comment plots below the one you want to see 
clc
clear
t=-1:1/600:1;
for i=1:length(t)
    if (t(i)<=1) &&( t(i)>=0)
        m(i)=sinc(10*t(i));
    else 
        m(i)=0;
    end
end
plot(t,m)
M=fft(m);
FS=-600:600;
Msh=fftshift(M);
plot(FS,abs(Msh)) 
xc1=DSB(m,1,10);
xc2=DSB(m,1,50);
xc3=DSB(m,1,100);
xc4=DSB(m,1,600);
xc5=DSB(m,1,1200);
plot(xc1)
plot(xc2)
plot(xc3)
plot(xc4)
plot(xc5)
 plot(FS,abs(fftshift((fft(xc3)))))
[y,z]=demod(xc3,1,100);
plot(t,z)
plot(FS,abs(fftshift(fft(z))))
plot(t,y)
plot(FS,abs(fftshift(fft(y))))
figure (2) 
plot(t,m)
hold on 
plot(t,z)
hold off
MSE=immse(m,z)
for i=1:500
   xc=DSB(m,1,i);
   [asd,xm]=demod(xc,1,i);
   MSEarr(i)=immse(m,xm);
end
MSEarr(500:1000)=0;
MSEarr(501:1000)=MSEarr(1:500);
MSEarr(1:500)=flip(MSEarr(1:500));
figure (3)
plot(-500:499,MSEarr)
% you can check what frequencies we can use for DSB and it has no limits 
% for i=1:1000              
%    xc=DSB(m,1,i);
%    [asd,xm]=demod(xc,1,i);
%    MSEarr2(i)=immse(m,xm);
% end
% plot(MSEarr2)
