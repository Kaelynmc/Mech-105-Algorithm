# Simpson's 1/3 Algorithm #

Used to integrate using the Simpson's 1/3 rule. In the case of only 2 sections, the trapezoidal rule will be implemented.
In the case of odd intervals, the trapezoidal rule is used on the last two. Starts by checking the number of inputs and deciding if the trap rule must be used. Based on this, the correct equation is applied. In the case of both  being applied, the trap rule is applied at the end after the simpson's. 

INPUTS 
 * x = the vector of equally spaced independent variable
 * y = the vector of function values with respect to x

OUTPUTS
 * I = the numerical integral calculated 
