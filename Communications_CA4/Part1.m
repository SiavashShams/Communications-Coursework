clc
clear

%part 1 Q:1
r = normrnd(0,1,2000,1);    
r2 = unifrnd(0,1,2000,1); 
figure (1)
histogram(r);
title("Normal distribution")
figure (2)
histogram(r2);
title("Uniform distribution")

%part 1 Q:2

r3=normrnd(0,1,2000,1);
r4=normrnd(0,1,2000,1);
figure (3)
plot(r3,r4,'.','MarkerSize',10)
title("Joint PDF of 2 normal arrays") 

r5= unifrnd(-sqrt(3),sqrt(3),2000,1);
r6= unifrnd(-sqrt(3),sqrt(3),2000,1);
figure(4)
plot(r5,r6,'.','MarkerSize',10)
title("Joint PDF of 2 uniformly distributed arrays") 

figure(5)
plot(r3,r5,'.','MarkerSize',10)
title("Joint PDF of a uniformly distributed and a normal array")


%part 1 Q:3

x=normrnd(0,1,2000,1);
y=normrnd(0,1,2000,1);
cond=0.4<y & y<0.6;
x_k=x(0.4<y & y<0.6);


figure(6)
histogram(x_k)
title("P(X|y=Y)")

u=unifrnd(-sqrt(3),sqrt(3),2000,1);
x_k2=x(0.4<u & u<0.6);

figure(7)
histogram(x_k2)
title("P(X|u=U)")

% r5=sort(r5);
% r6=sort(r6);
% [x1,x2] = meshgrid(r5,r6);
% XX=[x1(:),x2(:)];
% f=mvnpdf(XX);
% f=reshape(f,2000,2000);
% contour(sort(r5),sort(r6),f)

