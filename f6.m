function f6 = f6(t,x,v,fc)

% initialize variables
m = 0.3;
g = 9.8;
r = 1;
k = sqrt(m*g/r);

% eq.6 second order ode solved 
f6 = ((-1)*((fc*v)+((k^2)*x)))*1/m;

end