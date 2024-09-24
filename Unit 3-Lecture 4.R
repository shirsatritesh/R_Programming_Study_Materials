" Data Visualization Using GGPLOT2 "

" 4.) How are the Variables Net.Sales,
      Commision, Age distributed? "

" Kernel Density Plot / Histogram "

ggplot(Travel.Data,
       aes(x = Age)) +
  geom_density(lwd = 1) 


ggplot(Travel.Data,
       aes(x = Commision)) + 
  geom_density(lwd = 1) 


ggplot(Travel.Data,
       aes(x = Net.Sales)) + 
  geom_density(lwd = 0.5) 



ggplot(Travel.Data,
       aes(x = Age)) + geom_histogram() 


ggplot(Travel.Data,
       aes(x = Commision)) + geom_histogram() 


ggplot(Travel.Data,
       aes(x = Net.Sales)) + geom_histogram() 




" 5.) Do we see a significant
      proportion of claims
      coming through Offline / Online "

" Subdivided Bar Plot "

l.1 = ggplot(Travel.Data,
             aes(x = Distribution.Channel,
                 fill = Claim))

l.1 + geom_bar(position = "fill")


" Mulitple Bar Plot "
l.1 + geom_bar(position = "dodge")


" Bubble Chart "

set.seed(111)
Travel.Data = Travel.Data[sample(1:nrow(Travel.Data),
                                 size = 100,
                                 replace = F) , ]

plot(Travel.Data$Age)

l.1 = ggplot(Travel.Data,
             aes(x = Age,
                 y = Net.Sales,
                 size = Commision,
                 color = Gender))

l.1 + geom_point(alpha = 0.3)


" 11.) Box Plot "

ggplot(Travel.Data,
       aes(x = Net.Sales)) +
  geom_boxplot(fill = "tan2")


" 12.) Line Chart "

Sales.Travel = data.frame(Year =  2000:2021,
                          Agency = runif(22,10,50),
                          Direct = runif(22,30,50),
                          Others = runif(22,0,50))


ggplot(Sales.Travel,
       aes(x = Year)) +
  geom_line(aes(y = Agency,color = "red")) +
  geom_line(aes(y = Direct,color = "blue")) +
  geom_line(aes(y = Others,color = "orange")) +
  
  scale_color_identity(name = "Channel.Dist",
                       breaks = c("red", "blue", 
                                  "orange"),
                       labels = c("Agency", "Direct", 
                                  "Others"),
                       guide = "legend")

Red - Agency
Blue - Direct
Orange - Others


" Quick Tips - Functions "

" rep() "
" To repeat a particular value 'n' times "

" Eg. Repeat the word 'Normal' for 5 times "

rep("Normal",10)


" Eg. Repeat the seq 0-4 for 3 times "

rep(seq(0,4),3)


" cor() "
" Calculates the Pearson Correlation Coefficient "

cor(mtcars$mpg,mtcars$wt,method = "pearson")

" NOTE: 
 Pearson is by default
 Method can take value equal to
 'kendall' / 'spearman' "


" median() "
" Calculates Median for the given set of values "

median(mtcars$mpg)


" max() "
" Returns the maximum value along 
  a set of data points "

max(mtcars$mpg)



" min() "
" Returns the minimum value along 
  a set of data points "


" quantile() "
" By default return the Quartiles
  Q0, Q1, Q3, Q4 "

quantile(mtcars$mpg)

" NOTE: Specify the Percentile as
        the second argument in terms 
        of Probability "

" Eg. 3rd Decile == 30th Percentile "

quantile(mtcars$mpg,probs = 0.30)

