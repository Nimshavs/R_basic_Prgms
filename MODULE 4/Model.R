df<-read.csv("E:/Sem_3/Rprogramming/MODULE 4/income.data.csv")
View(df)
library(ggplot2)
ggplot(df,aes(x=income,y=happiness))+geom_point()
lmodel<-lm(happiness~income,data = df)
summary(lmodel)

# Residuals: These values represent the differences between the observed data points and the predicted values from the linear regression model. The residuals have a minimum of -2.02479 and a maximum of 2.37805, indicating that the model's predictions deviate from the actual values within this range.
# 
# Coefficients: The coefficients represent the estimated effects of the predictors (independent variables) on the dependent variable. In this case, there are two coefficients:
# 
# Intercept: The estimated intercept of the regression line is 0.20427. This is the value of the dependent variable when the independent variable(s) are zero.
# Income: The coefficient for the "income" predictor is 0.71383. This suggests that, for each unit increase in income, the dependent variable is estimated to increase by approximately 0.714 units.
# Significance Levels: The significance codes (*, **, etc.) indicate the level of significance for each coefficient. The intercept is statistically significant at the 0.05 significance level (p-value = 0.0219), and the income coefficient is highly significant (p-value < 2e-16).
# 
# Residual Standard Error: This value (0.7181) represents the estimated standard deviation of the residuals. It provides an indication of the average distance between the observed data points and the predicted values.
# 
# Multiple R-squared and Adjusted R-squared: The Multiple R-squared value (0.7493) indicates the proportion of the variance in the dependent variable that is explained by the independent variable(s). The Adjusted R-squared (0.7488) adjusts the R-squared value based on the number of predictors, providing a more accurate measure of model fit.
# 
# F-statistic and p-value: The F-statistic (1483) tests the overall significance of the model. The associated p-value (p-value: < 2.2e-16) suggests that the model is statistically significant, meaning that at least one predictor variable is related to the response variable.
# 
# Overall, the model seems to have a good fit based on the high R-squared value and significant coefficients. The income variable appears to be strongly associated with the dependent variable, as indicated by its high t-value and very low p-value.

View(mtcars)
mycars<-mtcars
View(mycars)

sum(is.na(mycars))
model<-lm(mpg~.,data=mycars)
model
lmodel1<-step(lm(mpg~.,data = mycars),direction="backward",trace=0)
lmodel1
summary(lmodel1)
ggplot(mycars,aes(x=am,y=mpg))+geom_point()
plot(predict(lmodel1),                                # Draw plot using Base R
     data$y,
     xlab = "Predicted Values",
     ylab = "Observed Values")
abline(a = 0,                                        # Add straight line
       b = 1,
       col = "red",
       lwd = 2)



myheart<-read.csv("E:/Sem_3/Rprogramming/MODULE 4/heart.data.csv")
View(myheart)

ggplot(myheart,aes(x=biking,y=heart.disease))+geom_point()
ggplot(myheart,aes(x=smoking,y=heart.disease))+geom_point()
ggplot(myheart,aes(x=biking,y=smoking))+geom_point()
lmodel2<-lm(heart.disease~biking,data = myheart)
summary(lmodel2)

myheart1<-sort(sample(nrow(myheart),nrow(myheart)*.8))
train<-myheart[myheart1,]
test<-myheart[-myheart1,]
dim(train)
dim(test)
model<-lm(heart.disease~biking+smoking,data = train)
model
pred<-predict(model,newdata = test)
pred

