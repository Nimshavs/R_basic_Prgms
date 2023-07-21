library(ggplot2)
x<-c(10,20,60,5)
y<-c("A","B","C","D")
pie(x,y,main="PieChart",col = rainbow(length(x)))
legend("topright",y,fill = rainbow(length(x)))

barplot(x,names.arg=y,col = rainbow(length(x)),main = "BarChart")
legend("topright",y,fill=rainbow(length(x)))

data<-read.csv("E:/Sem 3/R programming/MODULE 2/car.csv")
View(data)
hist(data$city_mpg,xlab="city_mpg",col = "royalblue")
colors()
plot(data$city_mpg,data$highway_mpg,xlab = "city_mpg",ylab = "highway_mpg",col=("sienna"))
plot(data$city_mpg,type = "o",col="red3")
#lines(data$city_mpg,type = "o",col="red3")
boxplot(data$city_mpg,col = "purple4")
dev.off() #clear the plots
