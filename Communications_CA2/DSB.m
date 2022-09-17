function y= DSB(x,Ac,fc)
t=-1:1/600:1;
    M=max(abs(x));
     x=x./M;
    y=Ac*x.*cos(2*pi*fc*t);
end
