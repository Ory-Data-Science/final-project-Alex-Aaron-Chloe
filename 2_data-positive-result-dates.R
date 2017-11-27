# Run this file second

#this command function allows us to select positive results from the dates column

Dates %>% 
  filter(RESULT== "positive")

#this renames the command function above to Dates_positive

Dates_positive <- Dates %>% 
  filter(RESULT== "positive")
