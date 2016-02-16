clear all; close all;

x = 0.1:0.1:3;
f = sin(x);

plot(x,f,'k'),hold on;
plot(x,f,'ro')

% just data from here on in

dx = x(2)-x(1);
n = length(f);

dfdx = zeros(n,1); % make a zero vector that has the same length as f

dfdx(1) = (f(2)-f(1))/(x(2)-x(1)); % forward diff. of first order

for j = 2:n-1
    
    dfdx(j) = (f(j+1)-f(j-1))/(x(j+1)-x(j-1)); % central diff. of second order
end
dfdx(n) = (f(n)-f(n-1))/(x(n)-x(n-1)); % backward diff. of first order

figure;
plot(x,cos(x),'k'), hold on
plot(x,dfdx,'b')

 