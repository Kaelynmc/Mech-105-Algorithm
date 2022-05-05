%% Matrix Algorithm 
function [A] = specialMatrix(n,m)

A = zeros(n,m);
if nargin<2 %the user must have both m and n values
    error('must input 2 arguments');
end
%begin the first row and column numbers
%row
for i = 1:n;
    A(i,1)=i;
end
%column
for i= 1:m;
    A(1,i)=i;
end
%add the element above and directly to the left 
for x=2:n; %do not include first r or c 
    for y=2:m;
        A(x,y) =A(x-1,y)+A(x,y-1); %x and y are coordinates in the matrix
    end 
end 
%display the final matrix
disp(A)

end