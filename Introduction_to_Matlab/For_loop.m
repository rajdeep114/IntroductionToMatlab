%Problem 3
clear all; close all; 

x = [];
xr = 200;
xl = 100;
v0 = 36;
t = 4;
g = 9.8;
cd = 0.25;

for j= 1:20
    xc = (xl+xr)/2;
    fc=sqrt((xc*g)/cd)*tanh(sqrt((cd*g)/xc)*t)-v0;
    x(j) =xc;
    if fc>0  
      xr = xc;
    else 
      xl = xc;
    end
    
    %x{j} = xc;
    if abs(fc)<10^(-4)
        break
    end
end   
     x0=100;
    options = optimset('TolX', 10e-6);
    fc=@(x)sqrt((x*g)/cd)*tanh(sqrt((cd*g)/x)*t)-v0;
    xt = fzero(fc,x0,options);
    x = [x xt].';
x

save -ascii A15111.dat x
