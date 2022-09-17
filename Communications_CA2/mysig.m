function xm= mysig(t,t0)
for i=1:length(t)
    if (t(i)<t0/3) &&( t(i)>0)
        xm(i)=1;
    elseif t0/3<t(i) && t(i)<2*t0/3
        xm(i)=-2;
    else 
        xm(i)=0;
    end
end
end
        
