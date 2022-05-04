%Kaelyn McMahon
%mech 105 false position
%March 4, 2022
%100 percent on grader

%call funtion
testFunc = @(x) x.^3; % the root for this is pretty clearly x=0

% now lets test the function, using default value for es
x_left = -1;
x_right = 1;
[root, fx, ea, iter] = falsePosition(testFunc, x_left, x_right)



function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)

%falsePosition finds the root of a function using false position method

%If not given es,maxit
if nargin < 4
    maxit=200;
    es=.000001;
elseif nargin < 5
    maxit= 200;  
end
%first values
iter=0;
ea=1;
xr_old = xu;
%check the bounds to check bracket
checksign = func(xl)*func(xu);

if checksign > 0
    error('bounds are not good')
elseif checksign == 0
    if func(xu) == 0
        ea=0;
        root=xu;
        fx = func(root);
        return
    else
        ea=0;
        root = xl;
        fx = func(root);
        return
    end
end

while ea > es && iter < maxit
    root = xu- ((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    fx= func(root);
    ea=abs((xr_old-root)./root)*100;
    xl=root;
    xr_old=root;
    iter=iter+1;
end
iter=iter-1;
end







