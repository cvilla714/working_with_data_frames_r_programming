#installng ggplot2 and palmerpenguins dataset
install.packages("ggplot2")
install.packages("palmerpenguins")

#loading the libraries ggplot2 and also palmerpenguines
library(ggplot2)
library(palmerpenguins)

#assigning data of penguins
data("penguins")

#viewing the data of penguins
View(penguins)

#create the data visualization by using ggplot2
#ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#improving the scatter plot by adding color the species
#ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species))

#adding shape and color to make it look better
#ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species,shape=species))

#adding size to it as well besides color and shape
#ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species,shape=species,size=species))

#using alpha for transparency
#ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,alpha=species))

#assigning a particular color
#ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,alpha=species),color="purple")

#changing from geo_points to geo_smooth
#ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#combining geo_smooth and geo_points
#ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))+
 # geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#adding a linetype to represent different species
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g,linetype=species))

#adding jitter
ggplot(data = penguins) + geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#using diamon dataset for barcharts
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut))

#adding color to the bar chart
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,color=cut))

#adding color to earch bar
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=cut))

#addign clarity
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity))

#adding facet_wrap
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)

#or short way to write it 
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species))+
  facet_wrap(~species)

#adding facet_wrap for diamond data
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color,fill=cut))+
  facet_wrap(~cut)

#using facet_grid
ggplot(data=penguins)+
  geom_point(aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)