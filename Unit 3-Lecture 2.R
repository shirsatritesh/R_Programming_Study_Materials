#### Family Of apply functions ####

"
The family of apply functions helps 
to use a function (be it custom or inbuilt
or from another package) where the inputs 
are taken from a matrix / data frame / list.

"

"
Recall: Draw back of for loops? 
"


" apply() "
# Syntax:
# apply(<Data Frame>,
#       MARGIN = <1/2>,
#       FUN = )

# NOTE:
# MARGIN = , whether to supply the data
#            row wise or column wise?

# FUN = , the function over which the
#         data / set of data point(s)
#         are to be applied.


"
Exercise:

Find the mean length / width in 'iris' dataset.

"
View(iris)

apply(iris[,-5],
      MARGIN = 1,
      FUN = mean)

1: row
2: columns

"
Exercise:

Find the PDF value of N(mu,sigma) using a Custom Function.

dnorm()

NOTE:
Take atleast 100 set / pairs of different
x and parameters values.

"

x = sample(seq(-3,3,0.1),
           size = 100,replace = T)

mu = sample(seq(-3,3,0.1),
           size = 100,replace = T)

sigma = sample(seq(0,5,0.1),
           size = 100,replace = T)

X = data.frame(x,mu,sigma)


PDF.NORM = function(x){
  
  return(dnorm(x[1],x[2],x[3]))
  
}


PDF.NORM(c(10,8,3))


X$PDF = apply(X,
              MARGIN = 1,
              FUN = PDF.NORM)




" sapply() "
"
- Works on vector / data.frame / matrix
- MARGIN not required
- Uses Columns
"

head(sapply(iris$Species,
       toupper))


One = sapply(iris[,-5],mean)
Two = apply(iris[,-5],2,mean)

sum(One != Two)

1 2 4  ==  1 2 3 
T + T + F = 2 = 3


sum(One == Two)



" lapply() "
"
- Works on vector / data.frame / matrix
- MARGIN not required
- Uses Columns
- Output is returned in form of a 'List'
"


" tapply() "
"

Applies the function over a particular
set of unique categories.


Similar to aggregating data studied
in Unit 2 using:

Data %>% group_by %>% summarise()

"

# Syntax:
# tapply(<values>,
#        <class>,
#        <function>)



" rapply() "

"
Recursively Apply a Function to a List
"

# Syntax:
# rapply(<list>,
#        <function>,
#        <class>,
#        <return>,
#        <subsitute>)



#### Exercise On Custom functions ####

"
Q1. 
Create a user define function to
find the variance of X.

Where X ~ Ga(5,0.55)

Draw 100 samples each of size 50 from
the same and store the variance value
in a vector called 'var.store'.

NOTE:
You can use the var() function.
"


"
Q2.
Create a user define function to
find the mode of X.

Where X ~ Poi(0.5)

Draw 100 samples each of size 50 from
the same and store the mode value
in a vector called 'mode.store'.

"