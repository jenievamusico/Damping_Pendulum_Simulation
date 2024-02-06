function f11 = f11(t,x,fc)

% initialize variables
m = 0.3;
g = 9.8;
r = 1;
k = sqrt((m*g)/r);
a = sqrt(((k^2) / m) - ((fc^2) / 4 * (m^2)));

% eq.11 function
f11 = (x) * exp((-fc * t)/(2 * m)) * (cos(a * t) + (fc / (2 * m * a )) * sin(a * t));

end
