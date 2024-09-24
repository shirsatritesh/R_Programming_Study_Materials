" Data Visualization Using PLOTLY "

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

library(plotly)


" 1.) Across which Agency, we have 
      sold highest policies? "

" Barplot "

FREQ.TABLE = data.frame(table(Travel.Data$Agency))

plot_ly(FREQ.TABLE,
              x = ~Var1,
              y = ~Freq,
              type = "bar",
        color = I("red")) %>% 
  layout(l.1,
       title = "Barplot Of Business Sourcing",
       yaxis = list(title = "Frequency"),
       xaxis = list(title = "Agency"))



"  2.) How is the Gender distrbution
      across the Policies sold? "

" Pie Chart "

Tab = data.frame(table(Travel.Data$Gender))  


plot_ly(type = "pie",
        labels = Tab$Var1,
        values = Tab$Freq) %>% 
  layout(title = "Gender Distribution")



" 3.) Do we see any relationship
      b/w Net Sales and Comission of the
      flight? "

" Scatter Plot "


plot_ly(Travel.Data,
        x = ~Net.Sales,
        y = ~Commision)


plot_ly(Travel.Data,
        x = ~Agency,
        y = ~Commision,
        type = "box",
        color = ~Agency)


View(arrange(Travel.Data %>% group_by(Agency) %>% 
  summarise(Mean.Commision = mean(Commision,na.rm = T)),
  desc(Mean.Commision)))



" 4.) How are the Variables Net.Sales,
      Commision, Age distributed? "

" Kernel Density Plot / Histogram "


plot_ly(Travel.Data,
        x = ~ density(Age)$x,
        y = ~ density(Age)$y) %>% add_lines()


plot_ly(Travel.Data[Travel.Data$Age >= 18 &
                      Travel.Data$Age <= 65,],
        x = ~ Age,type = "histogram") %>% 
  add_trace(x = density(Travel.Data$Age[Travel.Data$Age >= 18 &
                                          Travel.Data$Age <= 65])$x,
            y = density(Travel.Data$Age[Travel.Data$Age >= 18 &
                                          Travel.Data$Age <= 65])$y,
            type = "scatter",
            mode = "lines",
            fill = "tozeroy",
            yaxis = "y2") %>% 
  layout(yaxis2 = list(overlaying = "y", side = "right"))
        


" 5.) Do we see a significant
      proportion of claims
      coming through Offline / Online "

" Subdivided Bar Plot "

TABLE = data.frame(table(Travel.Data$Distribution.Channel,
              Travel.Data$Claim))

D.T = reshape2::dcast(TABLE,
                      Var1 ~ Var2,
                      value.var = "Freq")

plot_ly(D.T,
        x = ~ Var1,
        y = ~ No,
        type = "bar") %>% 
  layout(barmode = "stack") %>% 
  add_trace(y = D.T$Yes)



" Mulitple Bar Plot "
plot_ly(D.T,
        x = ~ Var1,
        y = ~ No,
        type = "bar") %>% 
  layout(barmode = "group") %>% 
  add_trace(y = D.T$Yes)



" Bubble Chart "

plot_ly(iris,
        x = ~Petal.Width,
        y = ~Sepal.Width,
        color = ~Species,
        type = "scatter",
        marker = list(size = ~Sepal.Length))



" 11.) Box Plot "

plot_ly(iris,
        x = ~Species,
        y = ~Sepal.Length,
        type = "box",
        color = ~Species)



" 12.) Line Chart "

Sales.Travel = data.frame(Year =  2000:2021,
                          Agency = runif(22,10,50),
                          Direct = runif(22,30,50),
                          Others = runif(22,0,50))


plot_ly(Sales.Travel,
        x = ~Year,
        y = ~Agency,
        mode = "lines",
        type = "scatter",
        line = list(color = 'blue', width = 4)) %>% 
  add_trace(y = ~Direct,
            line = list(color = 'red', width = 4, dash = 'dot'))
