clc
clear
fs=10000;
t=0:1/fs:0.2;
fc=100;
Ac=10;
kf=100;
kp=10;
m=sin(20*pi*t);
[xcfm,sig]=fmm(m,Ac,fc,kf,fs);
xcpm=pmm(m,Ac,fc,kp,fs);
plot(t,xcfm)
xlabel('t','interpreter','latex')
ylabel('xc','interpreter','latex')
title('Frequency Modulated Signal','interpreter','latex')
% hold on
% plot(xcpm)