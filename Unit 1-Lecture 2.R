#### Data Structures in R ####

# 1.) Vector / Array

" An Array consists of elements
  having homogeneous data type "

# Syntax:
# <var name> = c(<data sep with ,>)

marks = c(20,15,13,14,14)
no_of_papers = c(2,5,3,4,4)
name_of_students = c("Ayush",
                     "Priyanshi",
                     "Raj",
                     "Samar",
                     "Hetvi")

homogenity_check = c(12.55,
                     6.81,
                     "Normal",
                     "Chi-Sq")


" str(<name>) helps to identify
  the type of Data Structure "


# 2.) Matrix

" Matrix has similar properties like
  vector, but it is a 2-D Array "

# Syntax:
# <var name> = matrix(<data>,
#                      nrow = ,
#                      ncol = ,
#                      byrow = )


# Example:
" Assume that we want to simulate data
  from Gamma dist. based on few input
  parameters of alpha, lambda
  i.e X ~ Ga(alpha, lambda) "

# Store all required values in a matrix
# which can then be fed to the algo

para = matrix(nrow = 3,
              data = c(6,0.55,
                       2.5,0.13,
                       4,0.75))

print(para)


para = matrix(c(6,0.55,
                2.5,0.13,
                4,0.75),
              3,2,T)

print(para)


colnames(para) = c("Alpha",
                   "Lambda")

print(para)

# colnames(<name>) helps to add custom
# column names to Matrix / DataFrame

# Similarly,
# rownames(<name>) helps to add custom
# row names to Matrix / DataFrame


# 3.) Data Frame

" A DataFrame can be thought of,
 as a collection of Array "

" DataFrame has the power to hold
 various columns of different data types "

# Syntax:
# <var name> = data.frame(<vector 1>,
#                         <vector 2>,
#                         <vector n>)

# Example:
" Store the name of students and the
  no. of papers cleared (from last example)
  in a dataframe "

paper_info = data.frame(name_of_students,
                        no_of_papers)

paper_info

colnames(paper_info) = c("Name",
                         "Paper_Count")


rownames(paper_info) = c("A1",
                         "A2",
                         "A3",
                         "A4",
                         "A5")
print(paper_info)

str(paper_info)


# 4.) List

" A List is a Structure,
  which can hold all DATA STRUCTURE
  at once "

" Which means that a LIST can hold a
  list, vector, matrix, dataframe
  all at once "

# Syntax:
# <var name> = list(<data 1>,
#                   <data 2>,
#                   <data n>)

list_trial = list(no_of_papers,
                  name_of_students,
                  para,
                  paper_info)

print(list_trial)


" Quiz "

" 1.) Can we have a list within a list? "

" 2.) Which data strcuture has rows & columns? "

" 3.) Which data structure is a 1-D Array? "

" 4.) Can a vector hold 2 data types together?
      Explain the consequencies of the same. "

" 5.) Which structure can hold Multiple data
      types together. Give proper reasoning. "


" Exercise "

" 1.) Create the following Probability matrix,
      
            Sunny   Rainy
   Sunny     0.5     0.5
   Rainy     0.3     0.7   "


" 2.) Store the above matrix in a list "

" 3.) Create a DataFrame as shown below, 
     
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
           5.1         3.5          1.4         0.2  setosa
           4.9         3.0          1.4         0.2  versi
           4.7         3.2          1.3         0.2  setosa
           4.6         3.1          1.5         0.2  versi  "


" 4.) Add the above DataFrame in list created in 2.)
      Your list should contain 2 data strcuture
      now "

"-------------------------------------------------------------"

#### Indexing ####

" Each element in an array or a 
  DataFrame has its location, which
  can be specified in terms of numeric location "

" In R, Indexing starts from 1 "

" 1-D Array "
" Below are the given distr taken into
  consideration to model Claims "

distr = c("Normal","t-dt","F","Chi-Sq",NA)
#           1        2     3     4      5


" Give the name of the distribution
 which will be used to model for the 4th & 10th time "

distr[4]
distr[5]


" Matrix "
" Below is the Transition Probability Matrix "

TPM = matrix(c(0.2,0.8,
               0.6,0.4),
             ncol = 2,
             byrow = T)

TPM[2,1]
TPM[,2]
TPM[2,]


" DataFrame "
" Extract the first 2 columns & first 3 rows of the
  iris data "

data = iris

data[1:3,1:2]
data[c(1,2,3),c(1,2)]


" List "
" From the list in the above example,
  answer the following,
 
  1.) Probability of Sunny - Sunny in 1 step from TPM
  2.) 3rd row of the dataframe "


list_trial[[3]]
list_trial[3]


list_trial[[4]][3,]

