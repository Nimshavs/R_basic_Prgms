# create a df for a student with roll no,name,mark,dob

a <- data.frame(Roll_no = c(1,2,3,4), 
                name = c("Nimsha","Ajimi","Aby","Sarath"),
                mark1 = c(40,60,45,50), 
                mark2 = c(30,20,55,100),
                mark3 = c(50,30,68,79), 
                dob = as.Date(c('2000-09-26','2001-03-23','2000-02-25','2001-07-29'))
                )
a

structure(a)
# summary of df
summary(a)

# access items
# using index
a[4]

#using names
a[["dob"]]

#using $ operator
a$name
a
# add row
new_row<-rbind(a,c(5,"Akhil",56,76,80,"2001-09-11"))
new_row

#add colums
new_col = cbind(a,Course = c("MSc","MCA","MCA","MSC"))
new_col
a

# remove 1st row and 2nd column
new_df = a[-c(1),-c(2)]
new_df

# amt of rows and column
nrow(a)
ncol(a)

# length of df
length(a)

# extract 3rd and 5th row with 1st and 3rd column
new_row[c(3,5),c(1,3)]

# Combine

b <- data.frame(Roll_no = c(1,2,3,4), 
                name = c("Nimsha","Ajimi","Aby","Sarath"),
                dob = as.Date(c('2000-09-26','2001-03-23','2000-02-25','2001-07-29')))
marks <- data.frame(mark1 = c(40,60,45,50), 
                    mark2 = c(30,20,55,100),
                    mark3 = c(50,30,68,79))
df <- cbind(b,marks)
df

#sort table

print(df[order(df$name, decreasing = F), ]   )

# Create  a data frame with

personal <- data.frame(id = c(1:7),

weight = c(20,27,24,22,23,25,28),

gender = c("male","female","female","male","male","female","male"),

smoking = c("no","yes","no","yes","yes","no","yes"),

tumour = c("small","large","medium","large","medium","large","small"))
personal


structure(personal)
summary(personal)
str(personal)

personal[c(2,7),c(2,4)]

personal[,c(1,5)]
personal1 <- data.frame(personal$id,personal$tumour)
personal1

r<-list(8,30,"female","no","small")
personal<-rbind(personal,r)
personal

c<-c("ker","guj","punjab","TN","Assam","Karnataka","Delhi","Pune")
personal<-cbind(personal,c)
personal

personal$c<-NULL

names(personal)
head(personal)
tail(personal)
personal<-edit(personal)

personal2<-data.frame(id=c(2:8),bp=c("low","high","high","low","high","low","high"),bmi=c("low","high","low","high","high","low","low"))
personal2

personal
personal2

personal3<-merge(personal,personal2,by="id")
personal3

ord_data<-personal[order(weight),]
ord_data

names(personal)[3]<-"gender1"
names(personal)

t(personal) #transpose

split(personal,smoking)

