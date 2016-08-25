#Lecture 9, SEgment 2
#MR anlaysis, standarized
  #scale function --> standarised  
  #anova --> compare models

library(psych)
endur <- read.table('stats1_ex04.txt', header=T)
colnames(endur)[1] <- 'pid'
names(endur)

# modelling
model1.z = lm(scale(endur$endurance) ~ scale(endur$age))
summary(model1.z)

model2.z = lm(scale(endur$endurance) ~ scale(endur$activeyears))
summary(model2.z)


#model 3: multiple regression
model3.z <-lm(scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears))
summary(model3.z)

#Model comparisons
comp1 =anova(model1.z, model3.z)
comp1

comp2 = anova(model2.z,model3.z)
comp2

cor(endur)
