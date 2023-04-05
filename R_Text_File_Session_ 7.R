# Libraries
library(ggplot2)

mtcars


#scatter
scat = ggplot(mtcars, aes(x=mpg, y=wt)) + 
  geom_point(color='Red') + 
  labs(title= "MPG Vs Wt",y="weight", x = "Milage per gallon") + 
  xlim(0,50) 

scat



#line
ggplot(mtcars, aes(x=mpg, y=wt)) + geom_line()+ 
  labs(title= "MPG Vs Wt",y="weight", x = "Milage per gallon") + 
  xlim(10,35) 


#hist
ggplot(mtcars, aes(x=mpg)) + geom_histogram()

#density
ggplot(mtcars, aes(x=mpg)) + geom_density()

#bar
ggplot(mtcars, aes(x=cyl, y=gear)) +geom_bar(stat = "identity",colours='blue')


#box
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) + 
  geom_boxplot() + xlab("cyl")


#bubble
library(ggplot2)
library(dplyr)

# The dataset is provided in the gapminder library
library(gapminder)

View(gapminder)

data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

View(data)
names(data)
# Most basic bubble plot
ggplot(data, aes(x=gdpPercap, y=lifeExp, size = pop,color=continent)) +
  geom_point()



#pie
Prop <- c(3,7,9,1,2)
pie(Prop)

pie(Prop , labels = c("A","B","C","D","E"))


ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + 
  geom_bar( ) +
  scale_fill_brewer(palette = "Set1") 



library(gganimate)

# Make a ggplot, but add frame=year: one image per year
ggplot(gapminder, aes(gdpPercap, lifeExp, size = pop, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_bw() +
  # gganimate specific bits:
  labs(title = 'Year: {frame_time}', x = 'GDP per capita', y = 'life expectancy') +
  transition_time(year) +
  ease_aes('linear')



anim_save("271-ggplot2-animated-gif-chart-with-gganimate1.gif")
