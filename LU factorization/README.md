# LU Factorization Algorithm #

Algorithm will compute the L, U, and P matrices of a square matrix. The P matrix will only shift as needed. The script starts by creating a square matrix that has no values. Then the code will test to see if the matrix needs any pivoting. If it does, it will perform this action. Using the new matrix, it will go through and create the lower and pper matrices at the same time using gaussian elimination.

*only works for square matrix*

INPUTS 
* A = coefficient matrix

OUTPUTS 
* L = lower triangular matrix
* U = upper triangular matrix
* P = the permutation matrix
