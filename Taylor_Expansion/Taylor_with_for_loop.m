close all; clear all; clc

P = zeros(1,2);
 
orderplusone = 10;
format long
A=[];
x = [];
for j = 1:10
%     zero = zeros(1,j);
%    A = P;
%    B = zeros(1,j+1);
%    A = A.';
%    g = [zero;A].';
%    length(B)
%    length(g)
   
   %P = g + B;
   P = zeros(1,j+1);
    P(j)=1;
    
%     for n =  1:1
    if mod(length(P),2) == 0
      P(1) = 1/factorial(2*j-1) ;
      
    else
    P(1) = 0;
   
    
    end
P
   
   
end
% 
% x = -10:.01:10;
% y = polyval(P,x); hold on
% plot(x,y)
