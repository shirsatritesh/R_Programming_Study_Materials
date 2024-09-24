#### Loops ####

" Loops are used when we want to perform some
  specified activity / operations a no. of times
  which may or may not be known "

"-------------------------------------------------------------"
#### For Loop ####

" To be used when the no. of iterations OR
  no. of times to be executed is known "

# Syntax:
# for(iterator){
#    <block of codes>
#  }

x = c("Normal","Chi-Sq","t-dt")

for(i in x){
  print(i)
}



# Eg.
# calculate the squared deviations for the
# following data and store all info
# in a variable named SQ.DN,
# Data = 1,3,5,...,99


"-------------------------------------------------------------"
#### While Loop ####

" To be used when the no. of iterations OR
  no. of times to be executed is unknown "

# Syntax:
# while(condition){
#    <block of codes>
#    <dummy>
#  }

# Eg.
" Print Random no. in the range [-100,10000],
  until an unless a no. less than -50 is generated "

no = 9999999

while(no >= -50){
  
  no = sample(seq(-100,10000,1),1)
  print(no)
  
}


" Nested Loops "

" One or more loop(s) within another loop
  is said to be Nested Loop(s) "


# Syntax:
# for(iterator){
#    for(iterator){
#       <block of codes>
#   }
# }


# Eg.
" You are working with a 2X3 matrix.
  Print all indexes of the matrix "



" Excercise "

" Q1.)
  The Actuarial Society decides to declare only the grades,
  instead of marks
  And the students who have the grade 'F' will be given another
  grade based on how close the score was to the passing mark

  F-Grade sheet:
  5 marks less = A
  10 marks less = B
  More than 10 marks less = C "


" Q2.) 
  Calculate the SD(sigma) for the following data using
  For Loop & While Loop,
  Data = 2,5,8,11,...,98 "


"-------------------------------------------------------------"
" Matrix Multiplication (%*%) "

Probability_Matrix = matrix(c(0.15,0.85,
                              0.4,0.6),
                            ncol = 2,
                            byrow = T)


Probability_Matrix * Probability_Matrix

" The above code provides simple
  Multiplication and not 
  Matrix Multiplication "


Probability_Matrix %*% Probability_Matrix
