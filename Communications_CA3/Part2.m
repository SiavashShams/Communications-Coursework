clc
clear
fs=10000;
t=0:1/fs:0.2;
fc=100;
Ac=10;
kp=10;
m=sin(20*pi*t);
xc=pmm(m,Ac,fc,kp,fs);
xc2=nb(m,Ac,fc,kp,fs);
figure (1)
plot(t,xc)
xlabel('t','interpreter','latex')
ylabel('xc','interpreter','latex')
title('Phase Modulated Signal','interpreter','latex')
figure (2)
plot(t,xc2)
xlabel('t','interpreter','latex')
ylabel('xc','interpreter','latex')
title('NBPM Signal','interpreter','latex')
kp=-1:0.1:1;

for i=1:21
    Xcpm(i,:)=pmm(m,Ac,fc,kp(i),fs);
    Xcnb(i,:)=nb(m,Ac,fc,kp(i),fs);
    err(i)=immse(Xcpm(i,:)/max(Xcpm(i,:)),Xcnb(i,:)/max(Xcnb(i,:)));
end
figure(3)
plot(kp,err)
xlabel('kp','interpreter','latex')
ylabel('MES','interpreter','latex')
title('MSE for different values kp','interpreter','latex')
kp_good=kp(err<0.01);
max(kp_good)
disp('maximum value of kp for having less than 1% error is 0.7' )
