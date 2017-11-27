# Run this file fifth

#this function counts the number of mosquitos scourges caught each year. We wanted to compare this to the number of mosquitos infected with West Nile.
count(Dates, vars = "SEASON.YEAR")

#this renames the function 
mosquito_count <- count(Dates, vars = "SEASON.YEAR")

#this plots the counted number of scourges per year 
ggplot(mosquito_count, aes(x = SEASON.YEAR, y = freq)) +
  geom_bar(stat = "identity", color = "gold", fill = "gold") +
  labs(x = "Year", y ="Number of Scourges")
