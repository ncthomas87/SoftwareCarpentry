data=read.delim("gapminder.txt")
head(data)
three.countries <- subset(data, country == "Ireland" | country == "Sweden" | country == "Zambia")
three.countries
?subset
library('ggplots')
library(reshape2)
str(three.countries)
