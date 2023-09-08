data<-iris
data
# na.omit(data) 
data<-scale(data[,1:4])
data
km<-kmeans(data,centers=3)
km
library(factoextra)
fviz_cluster(km,data)
fviz_nbclust(data,kmeans)
mydata<-USArrests
mydata
km<-kmeans(mydata,centers = 4)
km
fviz_cluster(km,mydata)
mydata<-na.omit(mydata)
mydata<-scale(mydata[,2:4])
mydata
# kmedoids
library(cluster)
pm<-pam(mydata,2)
pm
pm$clustering
pm$medoids
fviz_cluster(pm,mydata)

# hierarchical
d<-dist(mydata,method="euclidean")
clusters<-hclust(d,method='complete')
plot(clusters)
