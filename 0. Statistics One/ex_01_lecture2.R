#Statistics One, Lecture 3, example script
#Read data, plot histograms, get descriptives

library(psych)

ratings<-read.table('stats1_ex01.txt',header =T)
class(ratings)
names(ratings)

colnames(ratings)<- c("RedTruck","WoopWoop","HobNob","FourPlay")

layout(matrix(c(1,2,3,4),2,2,byrow=TRUE))
hist(ratings$WoopWoop,xlab='Rating')
hist(ratings$RedTruck,xlab='Rating')
hist(ratings$HobNob,xlab='Rating')
hist(ratings$FourPlay,xlab='Rating')

#we had to load the package "psych" by using library(psych)

describe(ratings)



