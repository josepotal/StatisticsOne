#LEcture 12. Mediation analysis
#Segment 2: Moderation
# X is extraversion / Y is happines / Z is SES
library(MASS)
library(psych)

install.packages('multilevel')
library(multilevel)
setwd("C:/Users/jotal/Dropbox (Personal)/COURSERA/5. R and Statistics/0. Statistics One")

#reading data
mod <- read.table('stats1_ex06.txt', header =T)
colnames(mod)[1]<- 'ses'
names(mod)
mod$mod <- mod$extra * mod$ses
#plot graphics to know your data

# Two regression analysis
no.mod.model = lm (mod$happy ~ mod$extra + mod$ses)
summary(no.mod.model)

mod.model =lm (mod$happy ~ mod$extra + mod$extra + mod$mod)
summary(mod.model)

#compare models
anova(no.mod.model,mod.model)
