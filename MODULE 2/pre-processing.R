airquality
View(airquality)
air<-airquality
mean(air$Solar.R)
mean(air$Solar.R,na.rm = TRUE)
is.na(air)
#missing values
air$Solar.R<-ifelse(is.na(air$Solar.R),mean(air$Solar.R,na.rm = TRUE),air$Solar.R)
air$Solar.R
View(air)
#month abbreviation
air$Month<-month.abb[air$Month]
View(air)
#new column 
air$danger<-ifelse(air$Solar.R>100,"TRUE","FALSE")
View(air)
air$Month<-print(as.factor(air$Month))
#remove na 
air$Ozone<-ifelse(is.na(air$Ozone),mean(air$Ozone,na.rm = TRUE),air$Ozone)
air$Ozone
library(caTools)
split=sample.split(air,SplitRatio = 0.8)
train_set<-subset(air,split==TRUE)
test_set<-(subset(air,split==FALSE))
split
#scalling 
print(scale(air$Ozone))
