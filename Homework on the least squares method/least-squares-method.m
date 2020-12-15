clc; clear;
disp('Solves without using the polyfit command')
% Homework on the least squares method

x = [0,2,5,9,15,25,40];
y = [5,12,23,37,44,60,81];

c=x.^2/5; w=x.*sin(x);
A=[x.' c.' w.']; 
b=A\y.';
disp(b);

plot(x,y,'*')
xh=(1:10);
zh=[xh; xh.^2/5; xh.*sin(xh)];
yh=b.'*zh;
hold on
plot(xh,yh,'b-')