%% Simpson's 1/3 Algorithm 
function [I] = Simpson(x, y)


%Kaelyn McMahon
%Mech 105 Simpsons 1/3 Algorithm
%April 11 2022

%Error checking 
spaces= x(2)-x(1);
if size(x)~=size(y)
    error('Need same number of x and y values');
end
for iter=1:length(x)-1
    if spaces~= (x(iter+1)-x(iter));
        error('x needs to be evenly spaced');
    end
end



a= x(1);
b= x(length(y));
n= (length(y)-1);
ieven= y(3:2:length(y)-1);
iodd= y(2:2: length(y)-1);




if length(x) <=2
    warning('only uses trap');
    %trap rule formula
    I= ((y(length(y))-y(1)).*(b-a))/2;

%simps rule
elseif rem(length(x),2) ~= 0 && length(x) > 2 || length(x)==3
    %simpsons compostite formula
   I= (b-a)/(3*n)*(y(1)+y(length(y))+4*(sum(iodd))+2*(sum(ieven))); 

else  
    warning('This uses both trap and simp'); 
    for i= 1:2:length(x)-2
        %new variables 
        y0= y(i);
        y1= y(i+1);
        y2= y(i+2);
    I= (((x(length(x))-x(1))/(3*(length(x)-1)))*(y0+4*y1+y2));
    %trap and simps
    end



end