## MODULE 2
library(dplyr)
mydata=data.frame(roll=c(1:5),name=c("unni","sunu","ammu","nisha","aby"),age=c(34,45,22,18,50),
                  gender=c("M","F","F","F","M"),height=c(155,150,140,148,160),weight=c(70,50,56,45,45))
mydata

#select,filter--select row ,mutate--update with new variable, update, group by
select(mydata,name)
select(mydata,name:weight)
select(mydata,name,height)
filter(mydata,age>34)
filter(mydata,age>22&gender=="F")
filter(mydata,gender=="F"|age>22)

#condition
select(filter(mydata,age>22&gender=="F"),name)
mydata %>% filter(age>22&gender=="F")%>% select(name)
mutate(mydata,ratio=height/weight)
mydata %>% mutate(ratio=height/weight)
arrange(mydata,height)
mydata %>% arrange(desc(height))
mydata %>% group_by(gender)%>% count(gender)
mydata %>% summarise(mean(height))

print(getwd())
setwd("E:/Sem 3/R programming/MODULE 2")
print(getwd())
data<-read.csv("sampledata.csv")
data
#Select variables "Index", columns from "State" to "Y2008".
select(data,Index,State:Y2008)
#·         Drop the variable index

#·         Select or Drop Variables that starts with 'Y'

#Filter rows and retain only those values in which Index is equal to A.

#·         Select rows against 'A' and 'C' in column 'Index'.

#·         Select data for 'A' and 'C' in the column 'Index' and income greater than 1.3 million in Year 2002.

#·         Calculate mean and median for the variable Y2015.

#·         Select multiple variables by their names for computing mean and median

#·         Select 10 random observations of two variables "Index" "State"

#·         Calculate count and mean of variables Y2011 and Y2012 by variable Index.

#·         Compute mean of variables Y2014 and Y2015 by variable Index. Then sort the result by calculated mean variable Y2015.
data %>%group_by(Index) %>%summarise(mean_Y2014 = mean(Y2014), mean_Y2015 = mean(Y2015)) %>%arrange(mean_Y2015)
#·         Calculates division of Y2015 by Y2014 and name it "change".
mutate(data,ratio=Y2015/Y2014)
#·         Calculate rank for variables Y2008 to Y2010.
data %>%mutate(across(Y2008:Y2010, ~rank(.)))
#·         Select State that generated highest income among the variable 'Index'
data %>% group_by(Index) %>% filter(min_rank(desc(Y2015)) == 1) %>%
  select(Index, State, Y2015)
