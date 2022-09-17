clc
clear

% part2 Q:1
x=normrnd(0,1,2000,1);
y=normrnd(0,1,2000,1);
a1=0.5;
a2=-0.5;
a3=0.9;
a4=-0.9;
z1=a1.*x+sqrt(1-a1.^2).*y;
z2=a2.*x+sqrt(1-a2.^2).*y;
z3=a3.*x+sqrt(1-a3.^2).*y;
z4=a4.*x+sqrt(1-a4.^2).*y;
figure(1)
histogram(z1)
title("a=0.5")
figure(2)
histogram(z2)
title("a=-0.5")
figure(3)
histogram(z3)
title("a=0.9")
figure(4)
histogram(z4)
title("a=-0.9")
corrmat = [corr(z1,x),corr(z2,x),corr(z3,x),corr(z4,x)]
figure(5)
plot(z1,x,'.','MarkerSize',10)
title("correlation for a=0.5")
figure(6)
plot(z2,x,'.','MarkerSize',10)
title("correlation for a=-0.5")
figure(7)
plot(z3,x,'.','MarkerSize',10)
title("correlation for a=0.9")
figure(13)
plot(z4,x,'.','MarkerSize',10)
title("correlation for a=-0.9")
figure(8)
plot(corrmat,'.','MarkerSize',15,'color','red')
title("correlations for a=[0.5,-0.5,0.9,-0.9]")

% part2 Q:2
a=0.7;
Z=a.*x+sqrt(1-a.^2).*y;
x_k=x(0.4<Z & Z<0.6);
figure(9)
histogram(x_k)
title("P(X|z=Z) for a=0.7")
a=-0.7;
Z=a.*x+sqrt(1-a.^2).*y;
x_k2=x(0.4<Z & Z<0.6);
figure(10)
histogram(x_k2)
title("P(X|z=Z) for a=-0.7")
a=0.7;
Z=a.*x+sqrt(1-a.^2).*y;
x_k3=x(-0.6<Z & Z<-0.4);
figure(11)
histogram(x_k3)
title("P(X|z=Z) for a=0.7")
a=-0.7;
Z=a.*x+sqrt(1-a.^2).*y;
x_k4=x(-0.6<Z & Z<-0.4);
figure(12)
histogram(x_k4)
title("P(X|z=Z) for a=-0.7")



