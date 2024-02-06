function f4 = f4(t,x,v,fc)

% initialize variables
m = 0.3;
g = 9.8;
r = 1;

% eq.4 second order ode solved 
f4 = ((-1)*((fc*v)+((m*g*sin(x))/r)))*1/m;

end