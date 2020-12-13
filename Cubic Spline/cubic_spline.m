clc;
clear;
disp('Finding the intermediate values ​​in 0.1 step interval with the cubic spline');
% According to the data set below, write the MATLAB code that draws the graph by 
%finding the intermediate values ​​in 0.1 step interval with the cubic spline method.

X=[1 3 6 9 12 15 18 21 24];
Y=[0 0 0 6 20 7 2 0 0];

xp=[00.110];
yp=interp1(X,Y,xp,'spline');
figure
plot(X,Y,'o');
hold on
plot(xp,yp,'k-');
xlabel('X');
ylabel('Y');
title('Cubic Spline Interpolation');
grid on