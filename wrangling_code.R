#input data
library(tidyverse)
#The first dataset is about the mean years that females study in school from age 25
meanyearsinschool1 <- read.csv("/Users/xuchen/Desktop/MA615/assignment 2/meanyearsinschool1.csv", header = T)
#The second dataset is about the mean years that female study in school from age 15 to 24
meanyearsinschool2 <- read.csv("/Users/xuchen/Desktop/MA615/assignment 2/meanyearsinschool2.csv", header = T)
#The third dataset is about the employment rate for female from age 15
employmentrate <- read.csv("/Users/xuchen/Desktop/MA615/assignment 2/employmentrate.csv", header = T)

#After I input the data, I choose 12 counties: 4 developed countries, 4 development countries and 4 relatively poor development countries.
#4 developed countries: The United States, The United Kingdom, Japan and Russia
#4 development countries: China, Mexico, Indonesia and Brazil
#4 relatively poor development countries: India, Nigeria, Bangladesh and Pakistan
#And I use as_tibble() to extract the 12 countries data out and make three new datasets:
myis1 <- as_tibble(meanyearsinschool1) %>% filter(meanyearsinschool1$country %in% c("China","India","United States","Indonesia","Pakistan","Nigeria","Brazil","Bangladesh","Russia","Mexico","United Kingdom","Japan"))
myis2 <- as_tibble(meanyearsinschool2) %>% filter(meanyearsinschool2$country %in% c("China","India","United States","Indonesia","Pakistan","Nigeria","Brazil","Bangladesh","Russia","Mexico","United Kingdom","Japan"))
erw <- as_tibble(employmentrate) %>% filter(employmentrate$country %in% c("China","India","United States","Indonesia","Pakistan","Nigeria","Brazil","Bangladesh","Russia","Mexico","United Kingdom","Japan"))

#Because of the difference for the variable: year, I select the data that from 1990 to 2008, I extract the data:
myis1 <- myis1[, c("country","X1990","X1991","X1992","X1993","X1994","X1995","X1996","X1997","X1998","X1999","X2000","X2001","X2002","X2003","X2004","X2005","X2006","X2007","X2008")]
myis2 <- myis2[, c("country","X1990","X1991","X1992","X1993","X1994","X1995","X1996","X1997","X1998","X1999","X2000","X2001","X2002","X2003","X2004","X2005","X2006","X2007","X2008")]
erw <- erw[, c("country","X1990","X1991","X1992","X1993","X1994","X1995","X1996","X1997","X1998","X1999","X2000","X2001","X2002","X2003","X2004","X2005","X2006","X2007","X2008")]

#In order to find the relationship, I use pivot_longer() to tidy the data and create three new dataset:
table1 <- myis1 %>% pivot_longer(c('X1990':'X2008'), names_to = "year", values_to = "meanyears1")
table2 <- myis2 %>% pivot_longer(c('X1990':'X2008'), names_to = "year", values_to = "meanyears2")
table3 <- erw %>% pivot_longer(c('X1990':'X2008'), names_to = "year", values_to = "femaleemploymentrate")

#As we can see, I need to add the mean years that females study in school from age 15 to 24 and mean years that female study from age 25 togather.
#In order to make my indicators have the same range.
#I use full_join and mutate to do so.
meanyearsinschool <- full_join(table1,table2) 
myis <- meanyearsinschool %>% mutate(meanyearseducated = meanyears1 + meanyears2)

#Finally! I use full_join() again to create my ultimate clean dataset and ready for visualization.
finaltable <- full_join(myis, table3)


