% comment plots below the one you want to see 
clc
clear
t=0:0.001:0.15;
t0=0.15;
y = mysig(t,t0);
plot(t,y)

xc=AM(y,1,0.85,250);
plot(xc)

 Xc=fft(xc);
  Y=fft(y);
  plot(abs(fftshift(Xc)))
  plot(abs(fftshift(Y)))
xcnorm=xc/max(abs(xc));
 power=sum(xc.^2)/length(xc)
 powernorm=sum(xcnorm.^2)/length(xcnorm)


