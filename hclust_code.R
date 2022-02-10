install.packages("installr")
install.packages("fastcluster")
setwd("C:/Users/jesvb/Desktop/code")
x<- read.csv("plant_trait_data_2022.csv")
x_new <- x[-34, ]
x_new

y<-dist(x_new, method = "euclidean", diag = TRUE, upper = TRUE, p =0)
##running a hierarchical cluster using method complete which finds similar clusters

hc<-hclust(y,method ="complete", members = NULL)
plot(hc)

