library(ggplot2)
setwd("C:/Users/jesvb/Desktop/code")
x<- read.csv("plant_trait_data_2022.csv")
x_new <- x[-34, ]
y<-dist(x_new, method = "euclidean")
hc<-hclust(y,method ="complete", members = NULL)
dend <- hc %>% as.dendrogram
plot(dend)

library(tidyverse)
library(lubridate)

ggplot(dend)



