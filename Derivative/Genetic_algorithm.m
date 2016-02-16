clear all; close all; clc

x = 1:24;           % define the limit for x
y = [75 77 76 73 69 68 63 59 57 55 54 52 50 50 49 49 49 50 54 56 59 63 67 72];% define the 
% the data points equal to y
plot(x,y,'ko')

m = 200;% number of generation
n = 50; % trails
n2 = 10; % keep the best trails 

A = 12 + randn(n,1); % 50 guess for a

B = pi/12 + randn(n,1); % 50 guess for a
C = 60 + randn(n,1); % 50 guess for a

for jgen = 1: m
  
    for j = 1:n
        E(j) =  sum((A(j).*cos(B(j).*x)+C(j) - y).^2);
     
    end
    plot(E)
    [ Es, Ej] = sort(E); % sort from small to large
                         % Esis the value of f(x) and Ej is
                         % the index for it 
                         
    Ak1 = A(Ej(1:n2));
    Bk1 = B(Ej(1:n2));
    Ck1 = C(Ej(1:n2));
    
    Ak2 = Ak1+randn(n2,1)/jgen; % jgen is to scale matrix
    Bk2 = Bk1+randn(n2,1)/jgen;
    Ck2 = Ck1+randn(n2,1)/jgen;
    
    Ak3 = Ak1+randn(n2,1)/jgen;
    Bk3 = Bk1+randn(n2,1)/jgen;
    Ck3 = Ck1+randn(n2,1)/jgen;
   
    Ak4 = Ak1+randn(n2,1)/jgen;
    Bk4 = Bk1+randn(n2,1)/jgen;
    Ck4 = Ck1+randn(n2,1)/jgen;
    
    Ak5 = Ak1+randn(n2,1)/jgen;
    Bk5 = Bk1+randn(n2,1)/jgen;
    Ck5 = Ck1+randn(n2,1)/jgen;
    
    A = [Ak1; Ak2; Ak3; Ak4; Ak5];
    B = [Bk1; Bk2; Bk3; Bk4; Bk5];
    C = [Ck1; Ck2; Ck3; Ck4; Ck5];
    
end


Ak1 = A(Ej(1));
Bk1 = B(Ej(1));
Ck1 = C(Ej(1));
f = Ak1*cos(Bk1*x)+Ck1;
plot(x,y,'ko',x,f)

% x = ga('fit',n,A,b,A bar,b bar,x1,x2,nonlinear,option)

% 'fit' = function you make and call like we did it fminsearch; write the 
% function you want to minimize, which is error in our case

% n = number of generations
% A = linear inequality constrants 
% b = linear inequality constrants 
% Abar = linear equality constrants 
% b bar = linear equality constrants 
% x1 = value of x is greater than x1
% x2 = value of x is smaller than x1
% nonlin = non-linear inequality constrants 
% options