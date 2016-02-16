function dy  = lorenz(t,y,sigma,beta,rho)
% y is 3d state vector
% In matlab dy should be a column vector of the same
% size a vector y
% 
% y = [x;y;z]
% y(1) = x
% y(2) = y
% y(3) = z
% 
% dy = [dx/dt;dy/dt;dz/dt]
    
% y is of size 3 x n x n x n
dy = [
    sigma*(y(2,:,:,:)-y(1,:,:,:));   % dx/dt  = sigma(y-x) 
    y(1,:,:,:).*(rho - y(3,:,:,:)) - y(2,:,:,:); % dy/dt  = x(rho-z)-y
    y(1,:,:,:).*y(2,:,:,:) - beta*y(3,:,:,:); % dz/dt = xy-beta*z
    ];