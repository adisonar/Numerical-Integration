%% Problem 1

 % Program to compute the integrals numerically using Step Function, Trapezoidal Rule and Simpson's Quadratic rule
 
 % f = function
 % x0 = lower limit
 % xn = upper limit
 % n = number of strips
 % h = grid size
 
 f = @(x)[1/(((3*x)) + 1)^3];
 x0 = 0;
 xn = 3;
 n = 52;
 h = (xn - x0)/n;
 
 %% Step Function (Rectangular Integration Method also known as The Midpoint Rule)
 
 s = 0;
 for i = 1:n
     xi = x0 + (i-1)*h;
     s = s + (f(xi).*h);
 end
disp('Step Function = ');
disp(s);

%% Trapezoidal Rule 

ans = 0;
for i = 1:n-1
    ans = ans + f(x0 + i*h);
end
ans = 2*(ans);
ans1 = f(x0) + f(xn);
TrapezoidalRule = (ans+ans1)*(h/2);
disp('Trapezoidal Rule = ');
disp(TrapezoidalRule);

%% Simpson's Quadratic Rule (Simpson's 1/3rd rule)

area = f(x0) + f(xn);
for i = 1:2:n-1
    area = area + 4*f(x0 + i*h);
end
for i = 2:2:n-2
    area = area + 2*f(x0 + i*h);
end
SimpsonQuadrature = (h/3)*(area);
disp('Simpsons Quadrature = ');
disp(SimpsonQuadrature);
