clear all; close all;
%%
% 4th orfer Runga Kutta Intergrator
dt = 0.01;
T = 10;
x0 = [2;1];
w = 2*pi; % at natural frequency
d = 0.25;
A = [ 0 1; -w^2 -2*d*w];

[t,xGood] = ode45(@(t,x) A*x,0:dt:T,x0);
% Syntax of runga kutta method 
% t = corresponding time to xGood
% ode45(function handle,Time spans,intial cnondition)
%%
% Iterate forward euler schemes

xF(:,1) = x0; % state 
tF(1) = 0;  % time

for k = 1:T/dt
    tF(k+1) = k*dt;
    xF(:,k+1) = (eye(2)+ dt*A)*xF(:,k);
end
%%
% Backward Euler scheme

xB(:,1) = x0; % state 
tB(1) = 0;  % time

for k = 1:T/dt
    tB(k+1) = k*dt;
    xB(:,k+1) = inv(eye(2)- dt*A)*xB(:,k);
end

%%
figure;

plot(tF,xF(1,:),tB,xB(1,:),t,xGood(:,1));
legend('Forward Scheme','Backward Scheme','ODE45')