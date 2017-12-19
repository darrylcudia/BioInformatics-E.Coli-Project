#Project 01 - Bioinformatics
#Density Maps - Outbreaks (for e.coli)
setwd("~/Desktop")

#1 Install packages
install.packages(c("choroplethr","choroplethrMaps")) #installing the proper packages 
library(choroplethr) #loading the proper packages
library(choroplethrMaps) #loading the proper packages

#Data frame
Outbreaks <- read.csv("Outbreaks.csv") #contains the data for the project, state and value

#Maps
state_choropleth(Outbreaks)  #creates the US map with the data I've compiled through CSV
state_choropleth(Outbreaks, #using data from our csv file it plots the map based on our data
                 title = "E.Coli Outbreaks in US", #gives title of the map
                 legend = "# of Outbreaks", #label to indicate what the legend represents 
                 zoom = NULL) #sets zoom as default

{
  Outbreaks = StateChoropleth$new(Outbreaks)  
  Outbreaks$title = title  #title of map
  Outbreaks$legend = legend #legend of the map
  Outbreaks = Outbreaks$render() #renders the map
}


