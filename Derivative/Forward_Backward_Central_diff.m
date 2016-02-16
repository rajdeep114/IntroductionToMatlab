clear all; close all; clc

dt = 0.1; % define delta t
t = -2:dt:4; % range of t
f = sin(t); % given function

% Exact derivative

dfdt = cos(t);  %  The exact derivative using calculus formula
%%
% Plotting  functions f vs t and dfdt vs t
plot(t,f,'k--','LineWidth',1.2)
hold on,grid on
plot(t,dfdt,'k','Linewidth',3)
l1 = legend('Function','Exact Derivative');
set(l1,'FontSize',14)
axis([-2 4 -1.5 1.5])


%%
% Forward difference approx
dfdtF = (sin(t+dt)-sin(t))/dt;
% Backward difference approx
dfdtB = (sin(t)-sin(t-dt))/dt;
% Central difference approx
dfdtC = ((sin(t+dt)-sin(t-dt)))/(2*dt);


plot(t,dfdtF,'b','LineWidth',1.2)
plot(t,dfdtB,'g','LineWidth',1.2)
plot(t,dfdtC,'r','LineWidth',1.2)
l1 = legend('Function','Exact Derivative', 'Forward','Backward','Central','Location','Best');
set(l1,'FontSize',14)