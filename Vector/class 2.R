a<-c(10,20,30)
class(a)
typeof(a)
a<-as.integer(a)
class(a)
typeof(a)
a<-2:9
a
a<-seq(3,10,by=2)
a
a<-seq(3,10,length.out=10)
a
b<-c('a','e','i')
b
typeof(b)
class(b)

c<-c("Ammu","unni")
c
class(c)

d<-sample(1:50,10)
d
length(b)

str<-"Hello"
str
typeof(str)

f<-c(10L,20L)
f
typeof(f)
a<-c(10,20,30,40,50)
v<-c(TRUE,FALSE,TRUE)
v
typeof(v)
a[v]
a[c(TRUE,FALSE,TRUE)]  # [] means indexing
a[1]
a[2:4]
a[c(2,4)]
a[seq(2,4)]
a[-2]
a[c(-2,-4)]

a<-c("apple"=1,"orange"=2,"banana"=3)
a["orange"]

s<-c(10,20,30)
f<-c(40,50)
c(s,f)
r<-c(20,60,100)
f<-append(f,r)
f
