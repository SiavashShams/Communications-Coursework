clc
clear
fs=10000;
t=0:1/fs:0.2;
fc=100;
Ac=10;
m=sin(20*pi*t);
M=fft(m);
xc1=pmm(m,Ac,fc,0.1,fs);
xc2=pmm(m,Ac,fc,1,fs);
xc3=pmm(m,Ac,fc,5,fs);
xc4=pmm(m,Ac,fc,10,fs);
Xc1=fft(xc1);
Xc2=fft(xc2);
Xc3=fft(xc3);
Xc4=fft(xc4);

figure(1)
plot(-5000:5:5000,abs(fftshift((Xc1))))
axis([-500 500 -2 5000])
title('Spectrum of Modulated Signal with B=0.1','interpreter','latex')
xlabel('f(Hz)','interpreter','latex')
ylabel('XC','interpreter','latex')
figure(2)
plot(-5000:5:5000,abs(fftshift((Xc2))))
axis([-500 500 -2 5000])
title('Spectrum of Modulated Signal with B=1','interpreter','latex')
xlabel('f(Hz)','interpreter','latex')
ylabel('XC','interpreter','latex')
figure(3)
plot(-5000:5:5000,abs(fftshift((Xc3))))
axis([-500 500 -2 5000])
title('Spectrum of Modulated Signal with B=5','interpreter','latex')
xlabel('f(Hz)','interpreter','latex')
ylabel('XC','interpreter','latex')
figure(4)
plot(-5000:5:5000,abs(fftshift((Xc4))))
axis([-500 500 -2 5000])
title('Spectrum of Modulated Signal with B=10','interpreter','latex')
xlabel('f(Hz)','interpreter','latex')
ylabel('XC','interpreter','latex')

N=2;
xc1_bes=0;
for i= -N:N
    xc1_bes = xc1_bes +Ac*besselj(i,0.1).*cos(2*pi*(fc+i*10)*t);
end
%figure (5)
%plot(xc1_bes)
N=4;
xc2_bes=0;
for i= -N:N
    xc2_bes = xc2_bes +Ac*besselj(i,1).*cos(2*pi*(fc+i*10)*t);
end
%figure (6)
%plot(xc2_bes)
N=8;
xc3_bes=0;
for i= -N:N
    xc3_bes = xc3_bes +Ac*besselj(i,5).*cos(2*pi*(fc+i*10)*t);
end
% figure (7)
%plot(xc3_bes)
N=15;
xc4_bes=0;
for i= -N:N
    xc4_bes = xc4_bes +Ac*besselj(i,10).*cos(2*pi*(fc+i*10)*t);
end
% figure (8)
% plot(xc4_bes)

Xc1_bes=fft(xc1_bes);
Xc2_bes=fft(xc2_bes);
Xc3_bes=fft(xc3_bes);
Xc4_bes=fft(xc4_bes);
figure(9)
plot(-5000:5:5000,abs(fftshift((Xc1_bes))),-5000:5:5000,abs(fftshift((Xc1))))
axis([-500 500 -2 5000])
title('Comparison of Spectrum of Modulated Signals with B=0.1','interpreter','latex')
figure(10)
plot(-5000:5:5000,abs(fftshift((Xc2_bes))),-5000:5:5000,abs(fftshift((Xc2))))
axis([-500 500 -2 5000])
title('Comparison of Spectrum of Modulated Signals with B=1','interpreter','latex')
figure(11)
plot(-5000:5:5000,abs(fftshift((Xc3_bes))),-5000:5:5000,abs(fftshift((Xc3))))
axis([-500 500 -2 5000])
title('Comparison of Spectrum of Modulated Signals with B=5','interpreter','latex')
figure(12)
plot(-5000:5:5000,abs(fftshift((Xc4_bes))),-5000:5:5000,abs(fftshift((Xc4))))
axis([-500 500 -2 5000])
title('Comparison of Spectrum of Modulated Signals with B=10','interpreter','latex')

