clear all; close all;clc

% Loren'z parameter for chaos

sigma = 10;
beta = 8/3;
rho = 28;

% Intial condition  -  a large cube of points
xvec = -20:2:20;
yvec = -20:2:20;
zvec = -20:2:20;

[x0,y0,z0] = meshgrid(xvec,yvec,zvec); 

yIC(1,:,:,:) = x0;
yIC(2,:,:,:) = y0;
yIC(3,:,:,:) = z0;

plot3(yIC(1,:),yIC(2,:),yIC(3,:),'r.','Linewidth',1,'Markersize',16)

axis([ -40 40 -40 40 -40 40])
view(20,40);
drawnow

%% Compute all trajectories

dt = 0.01;          % time step
duration = 4;       
tspan = [0,duration];
L = duration/dt;

yin = yIC;
%%
for step = 1:L
    time = step*dt;
    yout = rk4singlestep(@(t,y) lorenzVector(t,y,sigma,beta,rho),dt,time,yin);
    yin = yout;
    plot3(yout(1,:),yout(2,:),yout(3,:),'r.')
    view(20+360*step/L,40);
    axis([ -40 40 -40 40 -40 40])
    drawnow
    
end