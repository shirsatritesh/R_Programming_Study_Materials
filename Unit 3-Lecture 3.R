" Data Visualization Using GGPLOT2 "

" Need for Visualization? "

" NOTE:
  We derive a solution for every problem
  rather than create a solution and 
  make a problem for it "


" 1.) Identify patterns / outliers
  2.) Communication to non-tech audience "


" Plots To Be Covered "

" 1.) Bar Plot "

barplot(table(iris$Species),
        col = "orange")

barplot(table(rnorm(1000,0,1)))

table(iris$Species)


" 2.) Pie Chart "

pie(table(iris$Species))


" 3.) Multiple Bar Chart "



" 4.) Subdivided Bar Chart "

" 5.) Subdivided Bar Chart (100%) "


" 6.) Histogram "

hist(iris$Sepal.Width)


" 7.) Kernel Density Plot "

plot(density(iris$Sepal.Width))


" 8.) Scatter Plot "

plot(mtcars$mpg,mtcars$wt)


" 9.) Heat Map "

library(corrplot)

corrplot(cor(iris[,1:4]))

x = cor(iris[,1:4])


" 10.) Bubble Chart "


" Install ggplot2 library "

install.packages("ggplot2")





" Load GGPLOT2 "

library(ggplot2)


" Problem Statement:
  You are hired as DS for 
  MakeMyTrip and the following questions are been 
  asked to you for by the Portfolio Management Team
  in order to set up a few strategies for
  the Business Team "

" Understanding the Data:
  The Data is at a transaction level 
  for the Business written via Agency "


" Questions:

  1.) Across which Agency, we have 
      sold highest policies?

  2.) How is the Gender distrbution
      across the Policies sold?

  3.) Do we see any relationship
      b/w Net Sales and Comission of the
      flight?

  4.) How are the Variables Net.Sales,
      Commision, Age distributed?

  5.) Do we see a significant
      proportion of claims
      coming through Offline / Online "


" Import the Data "

Travel.Data = read.csv("C:/Users/tanis/Documents/Dummy/Data Files/Travel Insurance.csv")
str(Travel.Data)

" 1.) Across which Agency, we have 
      sold highest policies? "

" Barplot "

l.1 = ggplot(Travel.Data,
             aes(x = Agency))



l.1 + geom_bar(color = "red",
               fill = "tan3") +
  labs(y = "Frequency",
       title = "Sales Made Via Agency")

barplot(table(Travel.Data$Agency))


"  2.) How is the Gender distrbution
      across the Policies sold? "

" Pie Chart "

Tab = data.frame(table(Travel.Data$Gender))  

l.1 = ggplot(Tab,
             aes(x = "",
                 y = Freq,
                 fill = Var1))

l.1 + geom_col() + 
  coord_polar(theta = "y")


pie(table(Travel.Data$Gender))


" 3.) Do we see any relationship
      b/w Net Sales and Comission of the
      flight? "

" Scatter Plot "

l.1 = ggplot(Travel.Data,
             aes(x = Age,
                 y = Net.Sales))

l.1 + geom_point() 

