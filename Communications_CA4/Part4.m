clc
clear

%Part 4 Q:4
X=normrnd(0,1,256,256);
x=filter(1,[1 -1], X);
figure(5)
plot(x)
title('random walk process')
figure(1)
plot(x(:,10),x(:,9),'.') 
figure(2)
plot(x(:,50),x(:,49),'.')
hold on 
plot(x(:,50),x(:,40),'.') 
title('correlation between samples (50,49) and (50,40)')
hold off
figure(3)
plot(x(:,100),x(:,99),'.')
hold on 
plot(x(:,100),x(:,90),'.')
title('correlation between samples (100,99) and (100,90)')
hold off
figure(4)
plot(x(:,200),x(:,199),'.')
hold on 
plot(x(:,200),x(:,190),'.')
title('correlation between samples (200,199) and (200,190)')
hold off

%part 4 Q:5

corrmat=zeros(1,256);
corrmat2=zeros(1,256);
for i=2:256
    corrmat(i)=corr(x(1:255,i),x(2:256,i));
    corrmat2(i)=(i-1)/sqrt(i*(i-1));
end
plot(corrmat)
hold on
plot(corrmat2)
hold off