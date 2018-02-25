mtcars <- read.csv("C:/Users/Mymaster/Desktop/Adhishree/Data Analytics/All files shared by Vinod Sir/mtcars.csv")
View(mtcars)
rownames(mtcars) <- mtcars$X
mtcars1 <- mtcars[,-1]
View(mtcars1)
#1. Histogram for all variables in a dataset mtcars. Write a program to create histograms for all columns. 
install.packages("purrr")
library(purrr)
install.packages("tidyr")
library(tidyr)
install.packages("ggplot2")
library(ggplot2)

mtcars %>%
  keep(is.numeric) %>% 
  gather() %>% 
  ggplot(aes(value)) +
  facet_wrap(~ key, scales = "free") +
  geom_histogram()
#2. Check the probability distribution of all variables in mtcars 
library(ggplot2)

mtcars %>%
  keep(is.numeric) %>%                     # Keep only numeric columns
  gather() %>%                             # Convert to key-value pairs
  ggplot(aes(value)) +                     # Plot the values
  facet_wrap(~ key, scales = "free") +   # In separate panels
  geom_density()                         # as density

#3. Write a program to create boxplot for all variables. 

data(mtcars)
par(mfrow=c(1,4))
for(i in 1:4) {
  boxplot(mtcars[,i], main=names(mtcars)[i])
}
or 

mtcars %>%
  keep(is.numeric) %>%                     # Keep only numeric columns
  gather() %>%                             # Convert to key-value pairs
  ggplot(aes(value)) +                     # Plot the values
  facet_wrap(~ key, scales = "free") +   # In separate panels
  geom_boxplot()                         # as density

or 

boxplot(mtcars1)

or 
mtcars <- read.csv("C:/Users/Mymaster/Desktop/Adhishree/Data Analytics/All files shared by Vinod Sir/mtcars.csv")
a <- seq(1,length( mtcars ),1)
a
for ( i in a ) {boxplot(mtcars[,i], main =names(mtcars[i]))}

