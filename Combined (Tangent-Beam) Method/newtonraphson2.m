clc; clear all; close all;

% Program Code of Newton-Raphson Method in MATLAB 
f = @(x) x^3+x^2-12*x; % the function to be solved
fd = @(x) 3*x^2+2*x-12; % the derivative of that function
xl=2; xu=4;
x=xl;
for i=1:1:100
    x1=x-(f(x)/fd(x));
    x=x1;
end
sol=x;
fprintf('Approximate root is %.15f', sol);
xl=2; xu=4;
x=xl;
er(5)=0;
for i=1:1:5
    x1=x- (f(x)/fd(x));
    x=x1;
    er(1)=x1-sol;
end
plot(er, 'mo-');
xlabel('Number if iterations')
ylabel('Error')
title('Error Vs. Number of iterations')