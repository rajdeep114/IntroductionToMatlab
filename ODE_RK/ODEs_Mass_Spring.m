clear all; close all; clc

w = 2*pi; % at natural frequency
d = 0.25;

% Spring mass -damper system

A = [ 0 1; -w^2 -2*d*w];

% dot(x) = Ax
dt = 0.1; % time step of integration 
T = 10; % amount of time to integrate
x0 = [2;0]; % we are starting at position 2 w/ zero velocity
           % stucture of x is [displacement x; velocity v]
% Iterate forward euler schemes

xF(:,1) = x0; % state 
tF(1) = 0;  % time

for k = 1:T/dt
    tF(k+1) = k*dt;
    xF(:,k+1) = (eye(2)+ dt*A)*xF(:,k);
end

% Backward Euler scheme

xB(:,1) = x0; % state 
tB(1) = 0;  % time

for k = 1:T/dt
    tB(k+1) = k*dt;
    xB(:,k+1) = inv(eye(2)- dt*A)*xB(:,k);
end


figure;
subplot(3,1,1)
plot(tB,xB(1,:));
xlabel(['time']);
ylabel(['position']);

subplot(3,1,2)
plot(xB(1,:),xB(2,:))
xlabel(['position']);
ylabel(['velocity']);

subplot(3,1,3)
plot3(tB,xB(1,:),xB(2,:));