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
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,alpha=species),color="purple")