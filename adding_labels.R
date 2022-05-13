library('ggplot2')
library('palmerpenguins')

#adding labels to our data visualizaiton
#adding a title
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Pneguins: Body Mass vs Flipper Length")


#adding a subtitle
ggplot(data=penguins)+
  geom_point(aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle="Sample of Three Penguin Species")


#adding caption , wrong way to do it 

ggplot(data=penguins)+
  geom_point(aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle="Sample of Three Penguin Species")+
  #wrong way to add caption
  caption("Data collected by Dr. Kristen Gorman")


#correct way to add caption
ggplot(data=penguins)+
  geom_point(aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle="Sample of Three Penguin Species",
  caption="Data collected by Dr. Kristen Gorman")


#adding annotate to the data visualization
ggplot(data=penguins)+
  geom_point(aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest")

#adding font and size and make it bold with also angle
ggplot(data=penguins)+
  geom_point(aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="orange",fontface="bold",size=4.5,angle=25)

#we could also store most of the code in a variable and then just add more things to it like this 
visual <- ggplot(data=penguins)+
  geom_point(aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")

#use the variable to add the annotate part
visual+annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="orange",fontface="bold",size=4.5,angle=25)


