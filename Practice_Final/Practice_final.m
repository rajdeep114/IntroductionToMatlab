clear all; close all;clc

%% Function roots

% fun = @(x) cos(x);
fun = @sin;
x0 = 5;


t = 0:0.1:8;
plot(t,sin(t),'k','LineWidth',5, 'MarkerSize',10);
x = fzero(fun,x0); % f(x) = 0, This finds the roots of the function.
% fminsearch finds the minimum value of the function at a given intial
% guess
fmin_search = fminsearch(fun,x0); % f(fmin_search) = minimum value
fmin_bnd = fminbnd(fun,2,6);

% finding the max
fun_negative = @(x) -fun(x);
[max,fmax]= fminsearch(fun_negative,x0);
abs(fmax);


%% Diagonals

x = [1 2 3 4 ;
    5 1 6 7;
    8 9 1 10;
    11 12 13 1];

xx = [1 3;1 2];

s = cond(xx);
d = det(xx);
   
  
z = diag(x);
y = diag(diag(x));

%% Line prog

clear all; 

A = [1 8/3; 1 1; 2 0; -1 0; 0 -1];
b = [4;2;3;0;0];
c = [-2;-1];
u = [0;0];
%  [x,f,flag] = linprog(c,A,b,[],[],[],u)






