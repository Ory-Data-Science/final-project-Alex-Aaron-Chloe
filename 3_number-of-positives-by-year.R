# Run this code third

#the library plyr allows us to use the count function

library(plyr)

#the count function allows us to select all the dates that have a postive scourge of mosquitos

count(Dates_positive, vars = "SEASON.YEAR")
