clear all; close all; clc

% Atmospheric Covenction Model

% dx/dt  = sigma(y-x)
% dy/dt  = x(rho-z)-y
% dz/dt = xy-beta*z

% Parameter may lead to chaos
% sigma = 10
% beta = 8/3
% roh = 28

% made two function rk4 and lorenzb

sigma = 10;
beta = 8/3;
rho = 28;

% Inital conditions
y0 = [ -8; 8; 27];

% Computing the trajectory( compute the motion of particle)

dt = 0.01;
tspan = 0:dt:4;

Y(:,1) = y0; % Vector stores values of y, and y0 is the first column
yin = y0;

for i = 1:tspan(end)/dt
    time = i * dt;
   yout = rk4singlestep(@(t,y) lorenz(t,y,sigma,beta,rho),dt,time,yin);
    Y = [ Y yout];
    yin = yout;
end
 
plot3(Y(1,:),Y(2,:),Y(3,:))
hold on
[t,y] = ode45(@(t,y) lorenz(t,y,sigma,beta,rho),tspan,y0);
plot3(y(:,1),y(:,2),y(:,3),'m')








