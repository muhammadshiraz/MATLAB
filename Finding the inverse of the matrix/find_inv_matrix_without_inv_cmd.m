clc;
clear;
disp('Finds Matrix Inversion in Pure MATLAB without inv command')
%Find the determinant of each of the 3x3 minor matrices
M = [1,0,3;2,4,1;1,3,0];
a = M(1,1);
b = M(1,2);
c = M(1,3);
d = M(2,1);
e = M(2,2);
f = M(2,3);
g = M(3,1);
h = M(3,2);
i = M(3,3);
detA = a*(e*i-f*h);
detB = b*(d*i-f*g);
detC = c*(d*h-e*g);
det = detA - detB + detC;
%Calculate cofactor
a2 = e*i-h*f;
b2 = -d*i-g*f;
c2 = d*h-g*e;
d2 = -(b*i-h*c);
e2 = a*i-g*c;
f2 = -(a*h-g*b);
g2 = b*f-e*c; 
h2 = -(a*f-d*c);
i2 = a*e-d*b;
detA2 = a2*(e2*i2-f2*h2);
detB2 = b2*(d2*i2-f2*g2);
detC2 = c2*(d2*h2-e2*g2);
cof = detA2 - detB2 + detC2;
%Cofactor matrix
n = [a2 b2 c2; d2 e2 f2; g2 h2 i2];
%Calculate transpose of cofactor
v(:,1) = n(1,:);
v(:,2) = n(2,:);
v(:,3) = n(3,:);
%Calculate inverse
if(det ~= 0)
    cust_inv = (1/det)*v;
    disp('Answer:');
    disp(cust_inv);
else
    fprintf('Matrix is not invertible.\n');
end