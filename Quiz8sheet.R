#Quiz 8

#P set 8
#Question 14
b1 <- 0.58
c <- 1/100

round(b1 / c, 2)
#If x is divided by k, multiply the slope by k, if x is multiplied by k, divide the slope by k 

#Question 17
b1 <- 0.08
dx <- 2

round(100 * b1 * dx, 2)
#For a log-level model, multiply the slope by the change in x, then multiply by 100

#Question 19
b1 <- 33.7
pct_change <- 7

round((b1 / 100) * pct_change, 2)
#Log-level: the outcome is logged, so calculate a percentage change in y.
#Level-log: the explanatory variable is logged, so calculate a change in y's units.
#Log-log: both are logged, so calculate a percentage change in y.

#1, 5, 6, 9, 13, 14, 15, 16

#Problem set 9 
#Question 1 
#Changing the salary to dollars from thousands multiplies every salary value by 1000
#Changing the units of the logged dependent variable shifts the **intercept**, not slope 

#Question 5
b1 <- 1.24
pct_change <- -6

round(b1 * pct_change, 2)
#If the question says falls, make the percentage change negative. 
#The coefficient can be positive while the resulting change is negative.

#Question 6
library(wooldridge)
data("ceosal1")

reg <- lm(log(salary) ~ roe, data = ceosal1)

b1 <- coef(reg)["roe"] #or b1 = reg$coefficients[2]

round(100 * b1 * 5, 2)
#For log-level questions, use 100 * slope * change_in_x

#Question 9 
#The omitted variable affects Y	Ability affects wages.
#The omitted variable is correlated with X  Ability is correlated with education.

#Question 13 
#Make the bottom bigger, and the fraction gets smaller. Vice/Versa 

#Question 14 
x <- c(3, 5, 7, 8, 10)
sigma <- 7

SSTx <- sum((x - mean(x))^2)

round(sigma / sqrt(SSTx), 2)

#Question 15
#Sigmahat^2 = SSR/n - 2
n <- 47
SSR <- 301

round(SSR / (n - 2), 2)
#The question asks for the variance, so do not take the square root. 
#If it asks for the error standard deviation, sigmahat, then you do take the square root.

#Question 16
n <- 14
SSR <- 781
SSTx <- 7

sigma_hat <- sqrt(SSR / (n - 2))

round(sigma_hat / sqrt(SSTx), 2)
