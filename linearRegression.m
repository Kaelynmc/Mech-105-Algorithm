%% Linear Regression Algorithm 
function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)


%Kaelyn McMahon 
%Linear Regression Algorithm
%April 27, 2022


%check sizes
if length(x) ~= length(y)
    error('must be the same length')
end 

%define 
fX=x;
fY=y;
%This sorts the list
[fY,i]=sort(fY);
fX=fX(i);




n=length(fY);



%filtering
i=1;
Q1=fY(round((n+1)/4));
Q3= fY(round((3*n+3)/4));
IQR= Q3-Q1;

%bounds
ub=Q3+1.5*IQR;
lb= Q1-1.5*IQR;


%rearrange 
while i<n+1
    if fY(i)>ub || fY(i)<lb %this gives a range for outliers
        fY(i)=[];
        fX(i)= [];
        n=n-1;
    else
        i= i+1;
    end
end

%means
ybar= sum(fY)/n;
xbar= sum(fX)/n;


%more defining-start at zero for the summation 
sumxiyi =0;
sumxsq=0;
sumysq=0;


%this is the main linear regression part 
%Calculte sums-- this is where it becomes the sigma part of the equtions
for i= 1:n
    sumxiyi= sumxiyi+ fX(i)*fY(i);
    sumxsq = sumxsq + fX(i)^2;
    sumysq = sumysq + fY(i)^2;
end

%compute answers
a1= (n*sumxiyi-sum(fX)*sum(fY))/(n*sumxsq-(sum(fX))^2); 
a0= ybar-(a1*xbar);

%Asked for this in particular
slope= a1
intercept= a0


%to get Rsquared value
Rsq= (n*sumxiyi-sum(fX)*sum(fY))/(sqrt(n*sumxsq-(sum(fX))^2)*sqrt(n*sumysq-(sum(fY))^2));
Rsquared= Rsq^2


end