#Lecture 9, Multiple Regression in R
#Segment 1
library(psych)
endur <- read.table('stats1_ex04.txt', header=T)
colnames(endur)[1] <- 'pid'
names(endur)

#examine a scatterplot
plot(endur$endurance ~ endur$age, main ='Scatterplot', ylab ='Endurance',xlab='Age')
abline(lm(endur$endurance ~ endur$age),col='blue')

plot(endur$endurance ~ endur$activeyears, main ='Scatterplot', ylab ='Endurance',xlab='Age')
abline(lm(endur$endurance ~ endur$activeyears),col='blue')


# modelling
model1 = lm(endur$endurance ~ endur$age)
summary(model1)

model2 = lm(endur$endurance ~ endur$activeyears)
summary(model2)

#model 3: multiple regression
model3 <-lm(endur$endurance ~ endur$age + endur$activeyears)
summary(model3)

