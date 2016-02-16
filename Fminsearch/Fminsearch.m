clear all; close all; clc

x = 1:24;
y = [75 77 76 73 69 68 63 59 57 55 54 52 50 50 49 49 49 50 54 56 59 63 67 72];

plot(x,y,'ko'), hold on

% calculate value of a,b,c in the cosine function where a  = Amplitude, b =
% period and c = scale on y - axis. 

C = 62; % guess for a,b,c
A = 13;
B = (2 * pi)/24;

f = A*cos(B*x)+C;
plot(x,f)

coeff = fminsearch('datafit',[A B C],[],x,y);

A1 = coeff(1); B1 = coeff(2); C1 = coeff(3);
f1 = A1*cos(B1*x)+C1;
plot(x,f1,'g')

A1
B1
C1