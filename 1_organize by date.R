# Run this code first
# set working directory with our West Nile Virus file 

library(tidyverse)

West_Nile_Virus <-  read.csv("West_Nile_Virus__WNV__Mosquito_Test_Results.csv")
# our original data frame

select(West_Nile_Virus, "TEST.DATE", "RESULT")

separate(West_Nile_Virus, TEST.DATE, c("date", "time"), sep = " ")
# separated date columns to get rid of the time element 

Dates <- separate(West_Nile_Virus, TEST.DATE, c("date", "time"), sep = " ")
# Renamed dataframe to keep separate from the old version

library(lubridate)
# lubridate library makes it easier to work with dates in a "month, day, year" format 
# Allowed us to use mdy function

mdy(Dates$date)

Dates$date <- mdy(Dates$date)

arrange(Dates, date)
# put the dates in ascending order

Dates <- arrange(Dates, date)

# GOAL: filter by positives and pipe year to positive result and graph it to see if there is a trend
