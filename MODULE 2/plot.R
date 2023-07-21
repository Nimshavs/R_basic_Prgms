library(ggplot2)
View(data)
#grammer4 facets
ggplot(data,aes(x=price,fill=fuel_type))+geom_area(stat ="bin")+facet_grid(~fuel_type)
#grammer5 themes
ggplot(data,aes(x=price,fill=fuel_type))+geom_area(stat ="bin")+theme_linedraw()
ggplot(data,aes(x=price,fill=fuel_type))+geom_area(stat ="bin")+theme_dark()
ggplot(data,aes(x=price,fill=fuel_type))+geom_area(stat ="bin")+theme_minimal()
png(filename = "mygraph.png")
dev.off()
