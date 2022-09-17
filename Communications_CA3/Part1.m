clc
clear
z = 0:0.01:10;
Y = zeros(5,1001);
Y2 = zeros(5,1001);

for i = 1:5
    Y(i,:) = besselj(i,z);
    Y2(i,:) = bessely(i,z);
end
figure(1)
plot(z,Y)
legend('Y_1','Y_2','Y_3','Y_4','Y_5','Location','Best')
title('Bessel Functions of the First Kind for $\nu \in [1, 5]$','interpreter','latex')
xlabel('z','interpreter','latex')
ylabel('$Y_\nu(z)$','interpreter','latex')
figure (2)
plot(z,Y2)
axis([-0.1 10.2 -2 0.6])
legend('Y_1','Y_2','Y_3','Y_4','Y_5','Location','Best')
title('Bessel Functions of the Second Kind for $\nu \in [1, 5]$','interpreter','latex')
xlabel('z','interpreter','latex')
ylabel('$Y_\nu(z)$','interpreter','latex')