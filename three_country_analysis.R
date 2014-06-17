data=read.delim("gapminder.txt")
head(data)
three.countries <- subset(data, country == "Ireland" | country == "Sweden" | country == "Zambia")
three.countries
?subset
library('ggplots')
library(reshape2)
str(three.countries)

my.plot <- ggplot(data=three.countries, aes(x=year, y=gdpPercap, color=country)) +
  geom_point()+
  stat_smooth(method="lm")

my.q.plot <- qplot(data=three.countries, x=year, y=gdpPercap, color=country, facets=~country) +
  stat_smooth(method="lm")

summary(my.plot)
