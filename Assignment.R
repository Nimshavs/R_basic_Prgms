#i.	Illustration of sample, runif and rnorm functions with examples
sample(1:20,size = 2)
runif(20,min = 1,max = 20)
rnorm(10,mean = 0,sd=1)

#ii.	Write a R program to create a list of random numbers in 
#normal distribution and count occurrences of each value.
n<-rnorm(20)
n
table(n)

#iii.	Write a R program to create a vector which contains 10 random integer values between -50 and +50
n<-sample(-50:50,size = 10)
n

#iv.	Use the sample function to obtain a random sample of 10 realisations in a biased coin experiment
sample(0:1,10,rep=T)   #Tail=6 & Head=4

#v.	Create a fair dice (with possible outcomes from 1 to 6) and 
#determine the arithmetic mean and standard deviation of throwing it 10,000 times.
t<-sample(1:6,10000,replace = TRUE)
mean(t)
sd(t)
t

#vi.	The most popular German lottery is known as 6 aus 49, in which a total of 7 numbers are 
#randomly drawn: First, 6 unique numbers are randomly drawn out of the numbers from 1 to 49. 
#Second, a single-digit “Superzahl” between 0 and 9. Simulate this lottery and run it once.
sample(1:49,6)
sample(0:9,1)

#vii.	Suppose we select a SRS of n = 3 balls from an urn containing a population of N = 6 balls 
#(painted with the numbers 1, 2, 3, 4, 5, and 6). List the sample space S of all possible outcomes.
library(combinat)
sample<-combinat::combn(1:6,3)      # -----
sample

#i.	Illustration of PDF & CDF functions of normal, binomial & Poisson distributions.
#Binomial pdf
x<-seq(0,20,by=1)
d<-dbinom(x,20,0.5)
plot(x,d)

#Binomial cdf
x<-seq(0,20,by=1)
p<-pbinom(x,20,0.5)
plot(x,p)

#Normal pdf
x<-seq(-10,10,by=0.1)
y<-dnorm(x,mean = 0,sd=1)
plot(x,y)

#Normal cdf
x<-seq(-10,10,by=0.1)
y<-pnorm(x,mean = 0,sd=1)
plot(x,y)

#library(ggfortify)
#ggdistribution(dpois,seq(0,20),lambda=9)
#Poisson pdf
x<-seq(0,20)
y<-dpois(x,lambda = 9)
plot(x,y)

#Poisson cdf
x<-seq(0,20)
y<-ppois(x,lambda = 9)
plot(x,y)

#ii.	Calculate the following probabilities:
  #Probability that a normal random variable with mean 22 and variance 25
s<-sqrt(25)
#(i)lies between 16.2 and 27.5
pnorm(27.5,mean = 22,sd=s) - pnorm(16.2,mean = 22,sd=s)

#(ii)is greater than 29
1-pnorm(29,mean = 22,sd=s)
#(iii)is less than 17
pnorm(17,mean = 22,sd=s)
#(iv)is less than 15 or greater than 25 
(1-pnorm(25,mean = 22,sd=s)) + pnorm(15,mean = 22,sd=s)

#Probability that in 60 tosses of a fair coin the head comes up
#(i) 20,25 or 30 times
dbinom(20,size = 60,prob = 0.5) + dbinom(25,size = 60,prob = 0.5) + dbinom(30,size = 60,prob = 0.5)
#(ii)  less than 20 times
dbinom(20,size = 60,prob = 0.5)
#(iii)between 20 and 30 times 
dbinom(30,size = 60,prob = 0.5) - dbinom(20,size = 60,prob = 0.5)

#A random variable X has Poisson distribution with mean 7. Find the probability that
#(i)X is less than 5 
ppois(5,lambda = 7)
#(ii)X is greater than 10 (strictly)
1-ppois(10,lambda = 7)
#(iii)X is between 4 and 16 
ppois(16,lambda = 7) - ppois(4,lambda = 7)


#iii.	Simulate normal distribution values. Imagine a population in which the average height is 1.70 m with a standard deviation of 0.1.
#Use rnorm to simulate the height of 1000 people and save it in an object called heights.
set.seed(1)
height<-rnorm(1000,mean = 1.70,sd=0.1)
#a) Plot the density of the simulated values.
plot(density(height),main = "Density Plot of simulated heights",xlab = "Height(m)")
#b) Generate 10000 values with the same parameters and plot the respective density 
height<-rnorm(10000,mean = 1.70,sd=0.1)
lines(density(height), col = "red")


#iv.	You roll a die 100 times and get just 10 sixes? 
#•	What is the probability of getting just 10 sixes? 
prob<-dbinom(10,size = 100,prob = 1/6)
prob
#•	What is the probability of getting 10 or fewer sixes?
prob_1<-pbinom(10,size = 100,prob = 1/6)
prob_1
#•	Draw the probability distribution. 
x<-0:100
prob_dist<-dbinom(x,size = 100,prob = 1/6)
plot(x,prob_dist,type = "h",lwd=3,xlab = "No: of sixes",ylab = "Probability",main = "Probability Distribution")
#•	Simulate the described experiment 1000 times and compute the empirical distribution.  
#Compare it to the theoretical one. Then do the same with 1,000,000 simulations.
set.seed(123)
s<-rbinom(1000,size = 100,prob = 1/6)
emp<-table(s/1000)
plot(as.numeric(names(emp)), emp, type = "h", lwd = 2, xlab = "Number of Sixes", 
    ylab = "Probability", main = "Empirical Distribution (1000 Simulations)")

set.seed(123)
s<-rbinom(1000000,size = 100,prob = 1/6)
emp<-table(s/1000000)
plot(as.numeric(names(emp)), emp, type = "h", lwd = 2, xlab = "Number of Sixes", 
     ylab = "Probability", main = "Empirical Distribution (1,000,000 Simulations)")

#v.	Using the function rbinom to generate 10 unfair coin tosses with probability  success of 0.3. Set the seed to 1.
set.seed(1)
rbinom(10,size=1,prob = 0.3)

#vi.	Simulate normal distribution values. Imagine a population in which the average height is 1.70 m with an 
#standard deviation of 0.1, using rnorm simulate the height of 100 people and save it in an object called heights.
set.seed(1)
height<-rnorm(100,mean = 1.70,sd=0.1)
#a) What’s the probability that a person will be smaller or equal to 1.90 m ?
pnorm(1.90,mean = 1.70,sd=0.1)
#b) What’s the probability that a person will be taller or equal to 1.60 m? 
1-pnorm(1.60,mean = 1.70,sd=0.1)  
