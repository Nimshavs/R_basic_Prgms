df=read.csv("C:/Users/janeesh/OneDrive/Desktop/R/data/CTCdata.csv")
df=read.csv("E:\\Rpgms\\CTCdata.csv")
df
cor(df)
summary(df)
missing_count <- colSums(is.na(df))
print(missing_count)
plot(df$LastCTC,df$CTCoffered)
plot(df$Highest.qualification,df$CTCoffered)
# Create a linear regression model
model <- lm(CTCoffered ~ Highest.qualification + LastCTC + Interview.rating + Total.years.of.work.exp, data = df)
summary(model)