library(dplyr)
library(factoextra)
library(cluster)
a<-read.csv("E:/Sem_3/Rprogramming/MODULE-3/Mall_Customers.csv")
View(a)
a<-a %>% mutate_at(c("CustomerID","Gender"),as.factor)%>%
  rename(Annual_Income=Annual.Income..k..,Spending_score=Spending.Score..1.100.)
a
a_clean<-a %>% select(-c(CustomerID,Gender))
a_clean<-scale(a_clean[,1:3])
fviz_nbclust(x=a_clean,FUNcluster=kmeans,method = "wss")
a_kmeans<-kmeans(x=a_clean,centers=5)
fviz_cluster(object = a_kmeans,
             data = a_clean,
             ggtheme = theme_minimal(),
             shape=19,
             show.clust.cent = TRUE,
             geom = "point")


cricket<-read.csv("E:/Sem_3/Rprogramming/MODULE-3/cricket.csv")
View(cricket)
