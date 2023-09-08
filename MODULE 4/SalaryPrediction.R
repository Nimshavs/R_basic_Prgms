---
title: "R Notebook"
output: html_notebook
---

```{r}
library(ggplot2)
```


```{r}
data <- read.csv("E:/Sem_3/Rprogramming/MODULE 4/Salary_Data.csv")
```

```{r}
head(data)
```
```{r}
sum(is.na(data$Salary))
```

Years of Experience => [1.1,10.5]
Salary => [3771,122391]
```{r}
str(data)
```

```{r}
summary(data)
```

```{r}
ggplot(data = data,mapping = aes(YearsExperience,Salary)) + geom_point(color="red",size=2)
```


```{r}
data$Salary <- scale(data$Salary)
```

```{r}
head(data)
```

```{r}
model = lm(Salary ~ YearsExperience,data = data)
```

```{r}
summary(model)
```

```{r}
ggplot(data = data,mapping = aes(YearsExperience,Salary)) + geom_point(color="red",size=2) +geom_smooth(method = "lm")
```
```{r}
new_data = data.frame(YearsExperience=c(1,2,3,1.2,1.4))
predict(model,new_data)
```

```{r}
data_2 <- read.csv("./Salary_Data.csv")
```

```{r}
model_2 = lm(Salary ~ YearsExperience,data = data_2)
```

```{r}
summary(model_2)
```

```{r}
model_2$coefficients
```

```{r}
model_2$residuals
```

```{r}
sqrt(mean(model_2$residuals^2))
```

```{r}
summary(model_2)$r.squared
```

