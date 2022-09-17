function y=pmm(m,Ac,fc,kp,fs)
    t=0:1/fs:(length(m)-1)/fs;
    y = Ac*cos(2*pi*fc*t+kp*m);
end
