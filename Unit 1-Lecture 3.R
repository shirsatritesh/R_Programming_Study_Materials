#### Logical Operators ####

" A condition is being checked giving
  a boolean output "

# < / <= (less than / less than equal to)
# > / >= (greater than / greater than equal to)
# == (equal to)
# != (not equal to)


no_of_papers = c(2,3,4,3,1)

no_of_papers >= 3


# & (AND)
# | (OR)
# ! (NOT)


" An Actuary is trying to Model the distribution 
  of Claim amounts.
  He assumes the distribution to be Normal

  He used 2 methods to estimate the parameters
  1.) Method of Moments
  2.) Maximum Likelihood Estimation

  He wants to know how both these estimates actually
  differs from each other "


mu_mom = runif(1,25000,30000)
mu_mle = runif(1,25000,30000)

sigma_mom = runif(1,2500,3000)
sigma_mle = runif(1,2500,3000)

" < / <= (less than / less than equal to) "
mu_mom < mu_mle
sigma_mom <= sigma_mle

" > / >= (greater than / greater than equal to) "
mu_mom > mu_mle
sigma_mom >= sigma_mle


" == (equal to) "
mu_mom == mu_mle
sigma_mom == sigma_mle


" != (not equal to) "
mu_mom != mu_mle
sigma_mom != sigma_mle


" The Actuary has given 3 papers in 
  his previous attempts for which the
  results are out just now

  He has downlaoded the results and 
  will decide to party if, "

result_1 = sample(c("P","F"),1)
result_2 = sample(c("P","F"),1)
result_3 = sample(c("P","F"),1)



# Use of AND operator (&)

" Evaluates 2 or more logical value
  and summarising them into 1 boolean value "

# No parties if he don't pass in any 1 of them

(result_1 == "P") & (result_2 == "P") & (result_3 == "P")



# Use of OR operator (|)

" Evaluates 2 or more logical value
  and summarising them into 1 boolean value "

# He will party if he pass in any one of them 

(result_1 == "P") | (result_2 == "P") | (result_3 == "P")



# Use of NOT operator (!)
" NOT take an value opposite of the true Boolean value
  Eg, NOT will make True equal to False and vice versa "

" He will party irrespective of the results
  The above question is covered in Quiz at 
  the end of the script "



#### Conversion Of Data Type / Structures ####

# 1.) Convert Matrix into Data.frame

m = matrix(c(3,1,2,4),ncol = 2)

m.dataframe = as.data.frame(m)
m.dataframe = data.frame(m)


# 2.) Convert Data.frame into Matrix

d = iris[1:5,c(1:3)]

d.matrix = as.matrix(d)

str(d.matrix)

" For data types: "
"
         Conversion                Function
'------------------------------------------------------------'
  Compatile type -> Numeric       as.numeric()
  Compatile type -> Character     as.character()
  Compatile type -> Boolean       as.logical()
  Compatile type -> Date          as.Date()
"

# Character to Numeric
c_to_n = c("1","23.43","Normal","l.o.s")
as.numeric(c_to_n)


# Numeric to Character 
n_to_c = round(rnorm(5),2)
as.character(n_to_c)


# Numeric to Boolean 
n_to_b = round(rnorm(5))
as.logical(n_to_b)


# Character to Boolean
c_to_b = c("1","23.43","Normal","l.o.s",0,0,1)
as.logical(as.numeric(c_to_b))



#### Problem of Operators with unequal length ####

set.seed(1)
MARKS.R = sample(30:50,size = 5)
MARKS.SCI = sample(30:50,size = 3)

MARKS.R + MARKS.SCI



#### Use of which() ####

" which() helps to identify the location
  of an element which satisfies a given
  condition(s) "


#### NOTE: ####
# Matrix Multiplication
# Data Type / Structure Conversion
# Logic on Addition
# Missing values in R
