# Run this code fourth

library(ggplot2)
# this library provides helpful graphing tools

positive_results_years <- count(Dates_positive, vars = "SEASON.YEAR")
# How many scourges were positive for West Nile Virus each year


ggplot(positive_results_years, aes(x = SEASON.YEAR, y = freq )) +
  geom_bar(stat = "identity", color = "darkorchid4", fill = "darkorchid4") +
  labs(x = "Year", y = "Number of Scourges Positive for West Nile")
# graphed the number of positive mosquitos per year 
