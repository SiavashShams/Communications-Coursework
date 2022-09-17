function y= AM(x,Ac,u,fc)
    t=0:0.001:0.15;
    M=max(abs(x));
    x=x./M;
    y=Ac*(1+u*x).*cos(2*pi*fc*t);
end
