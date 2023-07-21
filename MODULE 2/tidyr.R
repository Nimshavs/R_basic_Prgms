library(tidyr)  #rows to column & vice-versa
table1
table2
table3
table4a
table4b
table5
spread(table2,type,count)
gather(table1,type,statistics,cases,population)
separate(table3,rate,into=c("cases","population"),sep="/",remove=TRUE,convert=FALSE)
unite(table5,yr,century,year,sep = "")
separate(table3,year,into = c("century","year"),sep = 2,remove=TRUE,convert=FALSE)
View(who)
str(who)
