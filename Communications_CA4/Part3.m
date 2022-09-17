clc
clear

%Part 3 Q:1
X=normrnd(0,1,256,256);
ux=zeros(1,256);
x_mean=zeros(1,256);
for i=1:256
    ux(i)=mean(X(i,:));
    x_mean(i)=mean(X(:,i));
end
figure(1)
plot(1:256,x_mean)
title("mean of x_k")
figure(2)
plot(1:256,ux)
title("mean of samples in time n(u_x)")

%Part 3 Q:2
figure(3)
plot(X(5,:),X(6,:),'.','MarkerSize',10)
title("joint distribution function of two random variables with n1=5, n2=6")

rho=corr(X(5,:)',X(6,:)')
rho2= mean(X(5,:).*X(6,:))  %other way of calculating the correlation
