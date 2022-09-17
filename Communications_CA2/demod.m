function [y,z]= demod(xc,Ac,fc)
t=-1:1/600:1;
y=xc*2*Ac.*cos(2*pi*fc*t);
% y=y./max(abs(y));
z=lowpass(y,2,100);
end
