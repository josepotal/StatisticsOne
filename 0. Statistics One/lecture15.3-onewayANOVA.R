#LEcture 15. ANOVA in R
#Segment 3: One way ANOVA in R

library(MASS)
library(psych)
setwd("C:/Users/jotal/Dropbox (Personal)/COURSERA/5. R and Statistics/0. Statistics One")
dir()
wm = read.table('stats1_ex07.txt', header = T)
colnames(wm)[1]<- 'cond'
describeBy(wm, wm$cond)

#create subsets of data for control and training
wm.c = subset(wm,wm$train == 0) # control group
wm.t = subset(wm,wm$train == 1) # training group
wm.c.out = describe(wm.c)
wm.c.out
wm.t.out = describe(wm.t)
wm.t.out

#ANOVA
# IV is the number of training sessions
# DV is the gain score
aov.model = aov(wm.t$gain ~ wm.t$cond)
summary(aov.model)
aov.table = summary(aov.model)

#Effect size for ANOVA
ss =aov.table[[1]] $`Sum Sq`
eta.sq = ss[1] / (ss[1] +ss[2])
eta.sq
ss

#Post-hoc tests
TukeyHSD(aov.model)
#Levene's test
install.packages('car')
library(car)
leveneTest(wm.t$gain,wm.t$cond, center ='mean')
