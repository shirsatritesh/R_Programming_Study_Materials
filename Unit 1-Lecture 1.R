#### Characteristics Of R ####

"-----------------------------------------------------------------------"

# 1.) R is Case Sensitive
# Meaning: Small and Cap letters have different meaning

# Example:
# If X ~ Bin(n = 10, p = 0.5)

n = 10
p = 0.5

print(P)
print(p)


# The print() is used to output the value(s) 
# inside a variable

# A function is a keyword associated
# with ()

"-----------------------------------------------------------------------"

# 2.) R Overwrites variable
# Meaning:
" If a variable with a particular name
  exits and a new variable is created with same name,
  then the previous information will be replaced
  in place of the new "

# Example:
# If X ~ exp(lambda)

lambda = 0.15

# If Y ~ Gamma(alpha, lambda)

alpha = 10
lambda = 0.39

Lambda = 0.55


"-----------------------------------------------------------------------"

#### Commenting In R ####

#: Used To Comment (Single Line)
# "" : Used To Comment (Multi Line)
# Question: What is the use of commenting?


# RStudio

" RStudio "

" RStudio Works on R
  RStudio is user friendly
  RStudio has 4 Panes "

# RStudio Works on R
# RStudio is user friendly
# RStudio has 4 Panes


"-----------------------------------------------------------------------"

#### Variable Creation ####
# Syntax:

# <variable name> = <value / expression>
# <variable name> <- <value / expression>


" Variable name should start from Letters,
 and continue with letters, number, _ , . "

# Example:
# If X ~ U(a = 0, b = 0.5)

a = 0.5
b = 0.58

mean(c(1,2,3,5))

(a + b) / 2

(0 + 0.5) / 2

a
print(a)

# Question: Why do we need variables?


"-----------------------------------------------------------------------"

#### Quiz Time ####

" Identify the incorrect variable name and
  comment on the same "

1.) 1Mu = 2
2.) Mu1 = 50
3.) Sigma.2 = 32
4.) Var@ = 1.25
5.) Var_1 = 5


"-----------------------------------------------------------------------"

#### Data Type ####

" 1.) Numeric "

# Example of Numeric variable
# If X ~ exp(lambda)

lambda = 0.15
marks_scored_PFA = 88

class(lambda)
class(marks_scored_PFA)



" 2.) String / Character "

# We always specify a string / character
# value in " / '

# Example:
continuous_dist = Normal
discrete_dist = "Poisson"

class(continuous_dist)
class(discrete_dist)



" 3.) Boolean / Logical "

# Can take only 2 values, True & False

# Keyword for True:
TRUE / T

# Keyword for False:
FALSE / F

# Question: What is a Keyword?

# Example:
is_H0_true = TRUE
is_H0_true = T
is_H0_true = F
is_H0_true = FALSE

class(is_H0_true)

" In R,
  T -> 1 and F -> 0
"

T + T
F + T*2 + F



" 4.) Date "

# In R, dates are nos. based like in MS Excel

# Format = YYYY-MM-DD
Date.Vec.1 = c("2020-02-01","1998-04-30")

# Format = YYYY/MM/DD
Date.Vec.2 = c("2020/02/01","1998/04/30")

# Format = YY/MM/DD
Date.Vec.3 = c("20/02/01","19/04/30")

# Format = DDMMYYY
Date.Vec.4 = c("01Feb1990","13Jan2011")


" as.Date() function "
"
NOTE:
as.Date(<element>, format = )  
 takes 2 arguments,

1.) The element to be converted, which can
    be a vector / columns 
2.) The format in which the element is supplied
    by default format = YYYY-MM-DD / YYYY/MM/DD
"

" Format List "
"
     Syntax              Indicator
'----------------------------------------------------'
      %d          Day of the month (In Nos.)
      
      %m          Month of the Year (In Nos.)
      %b          Month of the Year (In short abb)
      %B          Month of the Year (In long abb)
      
      %y          Year (Last 2 digit)
      %Y          Year (All 4 digit)
"

as.Date(Date.Vec.1,format = )


as.Date(Date.Vec.2,format = )


as.Date(Date.Vec.3,format = )


as.Date(Date.Vec.4,format = )



" 5.) Factor "

" Factor the numeric / character column
  into various nos. pf levels "

" Popularly used in Modelling to convert
  a categorical column to work as Dummy Variables "

" For example "

str(mtcars$am)

" 'am' column is actually an binary column
  That is column with 2 levels "

" Use of factor() / as.factor() "

" Using data: mtcars "
am = as.factor(mtcars$am)

head(am)
str(am)


" Using data: iris "
str(iris)

head(iris$Species)
str(iris$Species)


"----------------------------------------------------------------------"

#### Numeric Operators ####

# 1.) Addition (+)

# Example:
" A student scored 87 and 67 in his
  Programming paper for Part A & B simultaneously
  Calculate his total scores. "

ICA = 87
FINAL = 67

Total = A + B

print(Total)
print(A + B)
print(87 + 67)




# 2.) Subtraction (-)

# Example:
" A Policy holder paid a Premium of Rs. 670
  Later on she realised and took an additional cover
  because of which the Total Premium = Rs. 1029
  Calculate the additional amount that is to be paid "




# 3.) Multiplication (*)
# If X ~ Bin(n = 10, p = 0.35)
# Calculate the Variance of X




# 4.) Division (/)
# If X ~ U(a = 2,b = 5)
# Find F(X = 3.5)

x = 3.5
a = 2
b = 5

F_3.5 = x - a / b - a


3.5 - (2/5) - 2
3.5 - 0.4 - 2
print(F_3.5)


F_3.5 = (x - a) / (b - a)
print(F_3.5)

" NOTE: R uses BODMAS rule "




# 5.) Power (^ / **)
# If X ~ U(a = 1.5,b = 5.8)
# Find the variance of X

a = 1.5
b = 5.8

variance = ((b - a)^2) / 12
print(variance)

variance = ((b - a)**2) / 12
print(variance)




# 6.) MODULO (%%)
# Provides the remainder after performing division

# Example:
" A Consulting Statistican is trying to model the Claims
  distribution for an Insurance Client

  She has been told to model 1 lakh claims entries 
  as one set every time.
  A total of 1,23,46,314 claim entries are given.

  How many claims entries will not be used? "


# 7.) Matrix Multiplication (%*%)
# Performs matrix multiplications in R

"----------------------------------------------------------------------"

#### Quiz Time #### 

" Q1.)
  Identify the type of variables below
"

distribution = "Weibull"     
no_of_parameters = "2"       
alpha = 2                    
lamda = 0.4567



" Q2.) 
  A Data Scientist has 984 chocolates, which he wants to distributes 
  among his 456 friends on his Birthday
  He wonders, how many minimum chocolates will be left if
  all his friends are given equal no. of chocolates 

  Each chocolate costs Rs.12.
  How much money did she probably spend extra? "



" Q3.) Calculate the PDF/PMF value for x = 0.55
       a.) X ~ N(mu = 5, sigma = 12)
       b.) X ~ exp(lambda = 0.85)
       
       For x = 4,
       c.) X ~ Poi(lambda = 3.4) "

# Hint:
# We use exp() to computes the exponential values
# The keyword "pi" = Mathematical Pi
# To calculate factorial, use factorial()

print(exp(1))
print(pi)
