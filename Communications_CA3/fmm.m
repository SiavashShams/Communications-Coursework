function [y,sig] = fmm(m,Ac,fc,kf,fs)
 for i = 1: length(m)
    sig(i)= trapz(m(1:i));
 end
 correct=(sig-mean(sig));   %to remove dc 
 sig=correct/(max(correct)*20*pi);
 y=pmm(sig,Ac,fc,2*pi*kf,fs);
end

