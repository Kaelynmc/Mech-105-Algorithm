%% LU Factorization Algorithm 
function [L, U, P] = luFactor(A)


%Kaelyn McMahon
%Mech 105 LU algorithm
%4/01/2022






L=eye(size(A,1));
P=eye(size(A,1));

%need square matrix
if size(A,1) ~= size (A,2)
    error("not a square matrix");
end
Apiv = A;
%pivot
for column=1:size(A,2)-1
    [~,in] =max(abs(Apiv(column:size(A,1),column))); %to move diagonal
    bigrow= (column+in)-1;% this is becuase you do not want the last one
    if bigrow~=column
        temp = P(column,:); %temp is temp position
        %%This is where the error, is not pivoting the l and u
        P(column,:) = P(bigrow,:);
        P(bigrow,:)= temp;
        %nest the for loops here
        Apiv = P * A;
    end
end

%%combine these two and then make sure to swap the rows of the U too


%upper
U=Apiv;
for column = 1:size(A,1)-1
    for row=1+column:size(A,1) %to go through all rows
        fac=U(row,column)/U(column,column);%the division to get constant
        %Solve current row
        dist=fac*U(column,:);%have to create new variables to store
        rem=dist-U(row,:);
        U(row,:)=rem*(-1);%to set the U correctly
        %assign current factor to L matrix
        L(row,column)=fac;%to set the L correctly
    end
end
end