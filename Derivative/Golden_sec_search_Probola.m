clear all; close all; clc

x = -2:0.1:1;
f = x.^4+10*x.*sin(x.^2); % define function
plot(x,f)

a = -2; b = 1;             % intervals
c = (-1+sqrt(5))/2;        % formaula for c

x1 = (c * a) + (1 - c) * b; % find x1 using a,b,c
x2 = (1 - c) * a + c * b;   % find x2 using a,b,c

f1 = x1^4+10*x1*sin(x1^2);  % value of function at x1
f2 = x2^4+10*x2*sin(x2^2);  % value of function at x2

for j = 1:100
    
    if f1<f2                % condition statement 
        b = x2; x2 = x1;f2 = f1; % right hand limit,b, becomes x2,
        x1 = c*a+(1-c)*b;
        f1 = x1^4+10*x1*sin(x1^2);
    else
        a = x1; x1 = x2; f1 = f2;
        x2 = (1-c)*a+c*b;
        f2 = x2^4+10*x2*sin(x2^2);
    end

    if b-a < 10^(-6)  % break the function when this difference is smaller than 10^(-6)
        break
    end
    
    
end

a
j
