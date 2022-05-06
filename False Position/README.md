# False Position # 

False position estimates the root of a given function. The script will check the data to ensure the inputs bracket the root. Then loops through the false position function until the root is within the stopping criteria.  


INPUTS 
* func- thed function being evaluated 
* xl- the lower guess
* xu- the upper guess
* es- the desired relative error
* maxit- the mamimum number of iterations

*if no es is stated, defaults to .0001%* 

OUTPUTS
* root- the estimated root location
* fx- the function evaluated at the root
* ea- the approximate relative error (%)
* iter- how many iterations performed
