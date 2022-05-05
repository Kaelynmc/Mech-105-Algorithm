%% False Position Algorithm 
function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
%Kaelyn McMahon
%mech 105 false position algorithm
%March 4, 2022

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
    error('bounds do not bracket root')
elseif checksign == 0 %if the root is found first try
    if func(xu) == 0 %to find out which value was the root if it was listed as a bracket
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

%main part of the functin
while ea > es && iter < maxit %if one is untrue the loop will end 
    root = xu- ((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    fx= func(root);
    iter=iter+1;
    ea=abs((xr_old-root)./root)*100;
    xl=root;
    xr_old=root; %set the new value
     
end
iter=iter-1;



end