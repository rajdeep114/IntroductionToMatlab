close all; clear all;

A = [4 -1 1; 4 -8 1; -2 1 5];
b = [7; -21; 15];

xsol = A\b

% Jacobi iteration
%x_(k+1) = M * x_k + b_2

M = [0 1/2 5/2; 4/8 0 1/8; -4 1 0];

b2 = [-15/2; 21/8; 7];
x0 = [2 ; 1 ;2];

tol = 1.e-6;
error = 2*tol;
iteration = 1;
x(:,1) = x0;
while(error > tol)&&(iteration < 100)
    
    iteration = iteration + 1;
    x(:,iteration) = M * x(:,iteration-1) + b2;
    error = norm(x(:,iteration)-x(:,iteration-1));
    
    
end

