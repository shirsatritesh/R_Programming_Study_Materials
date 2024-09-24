#### Classword - Loops ####

" Q.1)
  Calculate mean for the below data.
  Ignore all negative values
  
  X = c(12,2,-81,83,94,-1,-332,-21,33) "


X = c(12,2,-81,83,94,-1,-332,-21,33)
total = count = 0

for(i in 1:length(X)){
  
  if(X[i] > 0){
    
    total = total + X[i]
    count = count + 1
    
  }
  
  if(i == length(X)){
    
    print(paste("Mean is",round(total/count,2)))
    
  }
}

" Check "

mean(X[X > 0])



" 2.)
  Use a while loop to generate 2 random sample of size
  50 from a bag of 0-100 until the CV.1 > CV.2.
  Also, print the nth draw at which such a criteria is
  satisfied "


CV.1 = CV.2 = 999
count = 0

set.seed(1)

while(!(CV.1 > CV.2)){
  
  S.1 = sample(0:100,replace = T,size = 50)
  S.2 = sample(0:100,replace = T,size = 50)
  
  CV.1 = (sd(S.1) / mean(S.1)) * 100
  CV.2 = (sd(S.2) / mean(S.2)) * 100
  
  count = count + 1
  
  if(CV.1 > CV.2){
    
    print(count)
    
  }
}



" 3.) 
  Use a for loop to calculate the semi variance
  for the below dataset
  X = c(51,23,45,65,78,65,21,21,54)

  Semi-Variance is the variance of all Xi's
  which are below its mean, i.e X_bar "


X = c(51,23,45,65,78,65,21,21,54)
sq.dv = count = 0

for(i in X){
  
  x_bar = mean(X)
  
  if(i < x_bar){
    
    sq.dv = sq.dv + (i - x_bar)^2
    count = count + 1
    
  }
  
}

sq.dv / count
