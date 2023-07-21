who1<-gather(who,type,count,(5:60))
who1
View(who1)
str(who1)
# 1.	The data appears to contain values in its column names. Move the values into their own column. This will make it easy to separate the values combined in each code.
d<-separate(who1,type,into=c("new","type","sex"),sep = "_")
d

# 2.	Separate the values in each code with two passes. The first pass will split the codes at each underscore. The second pass will split sex and age after the first character to create a sex column and an age column.
e<-separate(d,sex,into=c("sex","age"),sep = 1)
e
f<-separate(e,age,into=c("st","en"),sep = 1)
f

# 3.	Move the rel, ep, sn, and sp keys into their own column names

g<-unite(f,age,st,en,sep = "-")
g

data <- data.frame(
  player = c("James", "Durant", "Curry", "Harden", "Paul", "Wade"),
  team = c("CLEOH", "GSWOAK", "GSWOAK", "HOUTX", "HOUTX", "CLEOH"),
  day1points = c("25","23","30","41","26","20"),
  day2points = c("24","25","33","45","26","23"))
data
a<-gather(data,day,points,(3:4))
a
rev("day","points")
