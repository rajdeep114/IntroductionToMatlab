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
% size(z0);
% a = [1 2
%     3 4];
% 
% b = [5 6
%     7 8];
% 
% c = [9 10
%     11 12];
% % size(a)
% % size(b)
% % size(c)
% [x,y,z] = meshgrid(a,b,c); 
% A = [x y z]

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

yparticles = yIC;

% code is very slow because of the number of for loop we are using.

% Use vectorized operation instead

for step = 1 : L % each step in time
    
    time = step*dt
    
    for i = 1:length(xvec) % to cover every particle in the box
        for j = 1:length(yvec)
            for k = 1:length(zvec)
                yin = yparticles(:,i,j,k); % all coors for i,j,k particles
                yout = rk4singlestep(@(t,y) lorenz(t,y,sigma,beta,rho),dt,time,yin);
                yparticles(:,i,j,k) = yout;
            end
        end
    end

plot3(yparticles(1,:),yparticles(2,:),yparticles(3,:),'r.')

axis([ -40 40 -40 40 -40 40])
view(20,40);
drawnow         
                
end