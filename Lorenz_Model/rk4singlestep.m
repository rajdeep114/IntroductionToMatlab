function yout = rk4singlestep(fun,dt,tk,yk)
% y_(k+1) = functionname(vector field, time step, time at which you are
% evaluating your vector field,y_k)
% fun is my right hand side of \dot(y) = f(t,y)

f1 = fun(tk,yk);
f2 = fun(tk+dt/2,yk+(dt/2)*f1);
f3 = fun(tk+dt/2,yk+(dt/2)*f2);
f4 = fun(tk+dt,yk+dt*f3);

yout = yk + (dt / 6) * (f1 + 2*f2 + 2*f3 + f4);