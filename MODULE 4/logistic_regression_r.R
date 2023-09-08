mydata<-read.csv("d:/r/diabetes.csv")
mydata<-na.omit(PimaIndiansDiabetes2)
View(mydata)
library(caTools)
library(dplyr)
library(ggplot2)
split = sample.split(mydata, SplitRatio = 0.7)
trainingset = subset(mydata, split == TRUE)
testset = subset(mydata, split == FALSE)
#Simple logistic regression--single predictor variable
trainingset %>%
  mutate(prob = ifelse(diabetes == "pos", 1, 0)) %>%
  ggplot(aes(glucose, prob)) +
  geom_point()
model <- glm( diabetes ~ glucose, data = trainingset, family = binomial)
summary(model)
summary(model)$coef
newdata <- data.frame(glucose = c(20,  180))
probabilities <- model %>% predict(newdata, type = "response")
predicted.classes <- ifelse(probabilities > 0.5, "pos", "neg")
predicted.classes
#logistic regression-plot
trainingset %>%
  mutate(prob = ifelse(diabetes == "pos", 1, 0)) %>%
  ggplot(aes(glucose, prob)) +
  geom_point() +
  geom_smooth(method = "glm", method.args = list(family = "binomial")) +
  labs(
    title = "Logistic Regression Model", 
    x = "Plasma Glucose Concentration",
    y = "Probability of being diabete-pos"
  )
#logistic regression -multiple predictor variables
model <- glm( diabetes ~ glucose + mass + pregnant, 
              data = trainingset, family = binomial)
summary(model)
summary(model)$coef

#logistic regression -multiple predictor variables
model <- glm( diabetes ~., data = trainingset, family = binomial)
summary(model)
summary(model)$coef
# Make predictions
probabilities <- model %>% predict(testset, type = "response")
probabilities
predicted.classes <- ifelse(probabilities > 0.5, "pos", "neg")
predicted.classes
# Model accuracy
mean(predicted.classes == testset$diabetes)


