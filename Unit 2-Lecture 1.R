#### If - Else ####

"----------------------------------------------------------"

" If - Else functionality helps us to alter / modify / 
  generate
  output based on some conditions that are to be satisfied

  For eg.
  How does a software decides to print 'P' or 'F' in
  the exam result letter of an Actuarial Exam? "


# Syntax for If - Else:
# if(<condition>){
#    <block of codes>
#    }else{
#    <block of codes>
#     }


# Syntax for If - Else If:
# if(<condition-1>){
#    <block of codes>
#    }else if(<condition-2>){
#    <block of codes>
#    }
#    .
#    .
#    .
# else{
#    <block of codes>
#     }


# Eg.
" The Exam committee decides that the pass mark
  for PFA will be 62.
  Write down the grade which will printed in the
  exam result letter "

pass_mark = 62
marks_scored = 76


if(marks_scored >= pass_mark){
  print("Pass")
}else{
  print("Fail")
}


" Eg. "
" Below is the salary amount (in lakhs).
  Please alott appropriate band and comment. 

  Salary = 17.8 

  Salary <= 2.5  : Band 1
  Salary (2.5 - 5] : Band 2
  Salary (5 - 10] : Band 3
  Salary > 10 : Band 4 "


salary = 1

if(salary <= 10){
  print("B3")
}else if(salary <= 5){
  print("B2")
}else if(salary <= 2.5){
  print("B1")
}else{
  print("B4")
}


" Alternative "
if(salary > 2.5 & salary <= 5){
  print("B2")
}else if(salary > 2.5 & salary <= 5){
  print("B1")
}else if(salary > 5 & salary <= 10){
  print("B3")
}


" Nested If - Else "

# Solved Eg.
" The Institute decides to have
  a top 1% tag on the result letter
  Incorporate the same accordingly. "

marks_scored = 96
pass_mark = 60
top1p = 76


if(marks_scored >= pass_mark){
  
  if(marks_scored >= top1p){
    print("Pass-1%")
  }else{
    print("Pass")
  }
  
}else{
  print("Fail")
}



" Alternative - Adding Tag For All Grades "

if(marks_scored >= pass_mark){
  
  if(marks_scored >= top1p){
    print("Pass 1%")
  }else{
    print("Pass")
  }
  
}else{
  
  if(marks_scored <= 30){
    print("F : D")
  }else{
    print("F")
  }
}



#### Exercise ####

" Q1.) "
" The Exam committee decides if any one of the student
  is on the border line then their paper needs
  to be rechecked.
  Tag their Grade Status appropriately now... 

  Boderline means, the marks scored is in 
  the range of -1 and + 1 of the Pass mark. "


" Q2.) "
" For the given age,
  apply the following ticket price at an
  amusement park 

  Age <= 5 : Price = 0
  Age <= 10 : Price = 100
  Age <=60 : Price = 500
  Age > 60 : Price = 350

"