
#Read in data
library(ggplot2)
library(gridExtra)

# load the diamonds dataset
diamonds <- diamonds

head(diamonds)


#Calulate the number of rows and columns
nrow(diamonds)

ncol(diamonds)

#make a "quick" plot using ggplot2


#Plot carat vs. price
ggplot(diamonds, aes(carat, price)) +
  geom_point(alpha=0.05)


#Check out distribution of data
ggplot(diamonds, aes(price)) +
  geom_histogram(bins=100)

ggplot(diamonds, aes(carat)) +
  geom_histogram(bins=100)

#Compare numeric variables

ggplot(diamonds, aes(cut, price)) +
  geom_boxplot(aes(fill=cut))

ggplot(diamonds, aes(color, price)) +
  geom_boxplot(aes(fill=color))

#Facet by factor variables
ggplot(diamonds, aes(carat, price, colour=clarity)) +
  geom_point()+
  facet_wrap(~cut)


#Plot the data to png

png("ggplot", width = 10, height = 7.5, units = 'in', res=220)

ggplot(diamonds, aes(carat, price, colour=clarity)) +
  geom_point()+
  facet_wrap(~cut)

dev.off()
