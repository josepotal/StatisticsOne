#LEcture 15. T-tests in R
#Segment 2: T-tests in R
# Dependent and independent test

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

#Dependent t-test
t.test(wm.c$pre, wm.c$post, paired = T) 
t.test(wm.t$pre, wm.t$post, paired = T) # outcomes a higher difference due to training

#Cohen's d for dependent t-test
d.c = (wm.c.out[4,3])/(wm.c.out[4,4]) # gain mean by gain sd
d.c
d.t = (wm.t.out[4,3])/(wm.t.out[4,4]) # gain mean by gain sd
d.t


#Independent t-test
t.test(wm$gain ~ wm$train, var.equal =T)
#Cohen's d for dependent t-test
pooled.sd = (79/118 * wm.t.out[4,4])+(39/118 * wm.c.out[4,4]) # gain mean by gain sd
d.ct = (wm.t.out[4,3] - wm.c.out[4,3]) / pooled.sd
d.ct
