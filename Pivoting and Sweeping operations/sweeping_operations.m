clc; clear; close all;

% Solve Ax = b using Native Gauss Elimination
A=[1 0 2; 2 1 0; 3 2 1];
b=[4;5;9];

%% Gauss Elimination
% Get augmented matrix
Ab=[A,b]
n=length(b);
n = 3;

% With A(1,1) as pivot Element
alpha = Ab(2,1)/Ab(1,1);
Ab(2,:) = Ab(2,:) - alpha*Ab(1,:);
alpha = A(3,1)/A(1,1);
Ab(3,:) = Ab(3,:) - alpha*Ab(1,:);

% With A(2,2) as pivot Element
alpha = Ab(3,2)/Ab(2,2);
Ab(3,:) = Ab(3,:) - alpha*Ab(2,:);

%% Back-Substitution
x = zeros(3,1);
for i = 2:-1:1
	x(i) = (Ab(i,end)-Ab(i,i+1:n)) / Ab(i,i);	
end
Ab	