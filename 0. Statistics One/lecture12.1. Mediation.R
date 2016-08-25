#LEcture 12. Mediation analysis
#Segment 1: Mediation
library(MASS)
library(psych)

install.packages('multilevel')
library(multilevel)
setwd("C:/Users/jotal/Dropbox (Personal)/COURSERA/5. R and Statistics/0. Statistics One")

#reading data
med <- read.table('stats1_ex05.txt', header =T)
colnames(med)[1]<- 'diverse'

#descriptive statistics
describe(med)
layout(matrix(c(1,2,3,4),2,2, byrow=TRUE))
hist(med$diverse)
hist(med$happy)
hist(med$extra)

#scatterplots to test linear assumptions
layout(matrix(c(1,2,3,4),2,2, byrow=TRUE))
plot(med$happy ~med$extra)
abline(lm(med$happy ~ med$extra))

plot(med$diverse ~ med$extra)
abline(lm(med$diverse ~ med$extra))

plot(med$happy ~ med$diverse)
abline(lm(med$happy ~ med$diverse))

#Mediation analysis: three regression analysis
# X is extra   Y is happy and M is diverse
model1= lm(med$happy ~ med$extra)
summary(model1)
model2= lm(med$diverse ~ med$extra)
summary(model2)
model3= lm(med$happy ~ med$extra + med$diverse)
summary(model3)

# Sobel test
indirect = sobel(med$extra, med$diverse, med$happy)
indirect
