install.packages("quantmod")
install.packages("ggpubr")

library(ggpubr) #package that mixes multiple graphs together
library(quantmod) #package that loads stocks
library(ggplot2) #package that makes plots

month <- c("01", "02", "03", "04", "05", "06", "07", "08" ,"09","10", "11" ,"12")
yr.count <- c(0,0,0,0,0,0,0,0,0,43,11,1)
#creates data frame of month and e.coli outbreaks

month.mean2 <- data.frame(month=month, yr.count=yr.count)

ggplot() + geom_line(data=month.mean2, 
                     aes(x=month, y=as.numeric(yr.count), group = 1), 
                     colour='red') + ylab("E.coli outbreaks") + ggtitle("E.Coli outbreaks in 2015")

#creates a graph of E.Coli outbreaks

chipotle=getSymbols('CMG', src='google', from='2015-01-01', to='2015-12-30', auto.assign=FALSE)
#gets chipotle stock from google from duration of the year 2015

chartSeries(chipotle, theme=chartTheme('white', TA='addsMA(10)')) #creates chipotle stock and graph in year 2015
addMACD() #adds general trend line
addBBands()
plot(addLines(v=190)) #the point in which Chipotle Outbreak began

