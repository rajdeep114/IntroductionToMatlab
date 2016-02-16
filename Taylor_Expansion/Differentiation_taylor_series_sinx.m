clear all; close all; clc

x = -15:.01:15;
y = sin(x);

plot(x,y,'k','Linewidth',2),hold on;

axis([-15 15 -10 10])
grid on

%% first order derivative
P = [1 0 ];
yT1 = polyval(P,x);

plot(x,yT1,'b --','Linewidth',1.2)

%% Third order derivative
P = [-1/factorial(3) 0 1 0]; % (-1/3!)x^3+x
yT3 = polyval(P,x);
plot(x,yT3,'r --','Linewidth',1.2)

%% Fiveth order derivative

P = [1/factorial(5) 0 -1/factorial(3) 0 1 0]; % (1/5!)x^5+(-1/3!)x^3+x
yT5 = polyval(P,x);
plot(x,yT5,'g --','Linewidth',1.2)

%% Seventh order derivative
P = [-1/factorial(7) 0 1/factorial(5) 0 -1/factorial(3) 0 1 0]; % (-1/7!)x^7+(1/5!)x^5+(-1/3!)x^3+x
yT7 = polyval(P,x);
plot(x,yT7,'r --','Linewidth',1.2)

%% Nineth order derivative
P = [1/factorial(9) 0 -1/factorial(7) 0 1/factorial(5) 0 -1/factorial(3) 0 1 0]; % (1/9!)x^9+(-1/7!)x^7+(1/5!)x^5+(-1/3!)x^3+x
yT9 = polyval(P,x);
plot(x,yT9,'m --','Linewidth',1.2)


%% Twenty fiveth order derivative
P = [1/factorial(25) 0 -1/factorial(23) 0 1/factorial(21) 0 -1/factorial(19) 0 1/factorial(17) 0 -1/factorial(15) 0 1/factorial(13) 0 -1/factorial(11) 0 1/factorial(9) 0 -1/factorial(7) 0 1/factorial(5) 0 -1/factorial(3) 0 1 0]; 
yT9 = polyval(P,x);
plot(x,yT9,'m --','Linewidth',1.2)
