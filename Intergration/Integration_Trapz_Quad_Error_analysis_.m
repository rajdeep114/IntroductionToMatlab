clear all; close all;

a = 0; %lb
b = 10; %Ub
dxf = 0.01; % Steps of 0.01

xf = a:dxf:b;
yf = sin(xf);

plot(xf,yf)

dxc = 0.005;
xc = a:dxc:b;
yc = sin(xc);

hold on; 

stairs(xc,yc,'r')

n = length(xc);

% integrating using left rec rule

area1 = 0;
for i = 1:n-1
    area1 = area1+yc(i)*dxc;
end
% right hand of rec

area2 = 0;
for i = 1:n-1
    area2 = area2 + yc(i+1)*dxc;
end
area1;
area2;


area3 =0;
 
for i = 1:n-1
    area3 = area3 + (dxc/2)*(yc(i)+yc(i+1))
end
area3

areatrap = trapz(yc)*dxc

areatrap = trapz(xc,yc)

%let compute without for loop

area1f = sum(yf(1:end-1))*dxf
area2f = sum(yf(2:end))*dxf
areatrapf = trapz(xc,yc)


% quad requires function handle

area4 = quad(@(x)sin(x),a,b)