## Combining Rows (Also said as 'appending') ##

" It may happen that the data of use is
  available in parts and you want to
  combine all the partial information into
  one complete data. 
"

" Problem "
"
You work in the Finance Department of NMIMS and
You are about to release the PNL for the month.

However, you get to know that there has been
4 more admission lately whose fee needs to get
accounted for.

You have recieved the additional entries from
your manager. Create an exhaustive dataset.

"

DATA = readxl::read_xlsx(file.choose())
NEW = readxl::read_xlsx(file.choose())


library(dplyr)
library(data.table)

setnames(NEW,"Course","Course_S")

FINAL = bind_rows(DATA,NEW)



## Simple Combining Of Rows and Columns ##

" By Simple, we mean that no Key of mapping 
  is taking into account. It's just addition
  of new column / row to the exisiting data 
"

" For Columns "
cbind()

x = cbind(mtcars,
          SAMPLE = 1:32)

View(mtcars)

" For Rows "

x = rbind(x,
          0:12)





#### Splitting Data ####

"
By Splitting we simply mean to create 
subsets from the dataset we have.
The subset maybe based on some criteria on 
rows / columns.

"

" Problem "
"
Create a different datasets for each of the
species in the 'iris' dataset.

"
" Using subset() "
# Syntax:

# subset(<data>,
#        <condition(s)>,
#       select = <column names>)

# select = , allows to extract / remove the
# columns names specified

Setosa = subset(iris,
       select = - c(Sepal.Length,
                    Species,
                    Petal.Width))

iris[-5]

" Using Indexing "

iris[which(iris$Species == "setosa") , c("Species")]

iris[1:10,2]

" Problem "
"
Import the 'Sales.csv' file and remove 
Ship Date and Order Date.

"

Sales$Date = NULL
Sales$Ordr = NULL


#### Data Cleaning ####

"
Replacing / Imputing NA values

"

DATA = iris[,c("Petal.Length",
               "Petal.Width")]

set.seed(1)
DATA[sample(1:nrow(DATA),
            sample(1:30,1)),1] = NA 


colSums(is.na(DATA))


DATA[is.na(DATA)] = 0

colSums(is.na(DATA))




set.seed(1)
DATA[sample(1:nrow(DATA),
            sample(1:30,1)),1] = NA 

DATA$Petal.Length[is.na(DATA$Petal.Length)] = 
  mean(DATA$Petal.Length,na.rm = T)



" Questions: 
  Are missing values always NA In R?

"


" Removing NA Values "


" From Rows "
na.omit()


" From Columns "
" 
Hint: Using Indexing
"

x = DATA[,colSums(is.na(DATA)) == 0]


#### Data Arranging ####

" 
Sorting rows of the data based on 
one / more columns.

"

library(dplyr)

# Syntax:
# arrange(<data>,
#         <col1>,
#         <col2>,
#         ...,
#         <col3>)


"
Problem:
Sort the mtcars dataset by 'cyl'.
"

x = arrange(mtcars,
        desc(cyl))



#### Break Keyword in R ####

" Question:
  Why do we need such controls in Loop?
"

" 
Problem:
You are playing tambola along with 1 
of your other friends.

If the no. 46 occurs, then the game stops.
Player A wins if the trial at which 46 has 
occur is odd, else Player B wins.

"

x = sample(1:90,replace = F)
count = 0

for(i in x){
  
  count = count + 1
  
  if(i == 46){
    print(ifelse(count %% 2 == 0,
           "Player B Wins",
           "Player A Wins"))
    
    break;
  }
}


ifelse(<condition/s>,
       <output if TRUE>,
       <output if FALSE>)

if(){
  
  
}else{
  
  
}

"
Exercise:
You are calculating log-likelihood for a 
sample generated from Exponential Distribution.

The system which generated the sample is NOT reliable,
and you should stop the process if any -ve value shows up.

Also Note the step at which the absurd value was found.

Run the below code to get the sample values.

Assume lambda = 0.75
"

set.seed(1)
x = sample(c(rexp(100,0.75),
           sample(seq(-15,-1,0.5),1)))
