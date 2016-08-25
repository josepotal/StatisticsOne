
setwd("C:/Users/jotal/Dropbox (Personal)/COURSERA/5. R and Statistics/0. Statistics One")

library(psych)

#read data
impact <- read.table('stats1_ex02.txt', header =TRUE)
colnames(impact) <- c("memory.verbal", "memory.visual","speed.vismotor","speed.general","impulse.control" )

class(impact)
names(impact)


#histogram
layout(matrix(c(1,2,3,4,5,6),2,3,byrow=TRUE))
hist(impact$memory.visual,xlab='Visual memory', main ="Histogram", col='red')
hist(impact$memory.verbal,xlab='Verbal memory', main ="Histogram", col='red')
hist(impact$speed.vismotor,xlab='Speed Vismotor', main ="Histogram", col='red')
hist(impact$speed.general,xlab='General Speed', main ="Histogram", col='red')
hist(impact$impulse.control,xlab='Control impulse', main ="Histogram", col='red')

# desciptives
describe(impact)

#scatterplots
plot(impact$memory.verbal~impact$memory.visual,main="Scatterplot",ylab='Verbal Memory',xlab='visual memory')
#regression line --> lm is linear model 
abline(lm(memory.verbal~memory.visual,impact),col='blue')


#correlations
cor(impact$memory.verbal,impact$memory.visual)

#correlations testing for significance
cor.test(impact$memory.verbal,impact$memory.visual)

#df  degrees of freedom -> df=198, number of data points that are free to vary. The last number is determined by
#the others. So, in X there is N-1 and in Y there is N-1, so 198
#p-value is the probability of getting the cor value

#correlations for all matrix (it is possible as all matrix is numeric)
cor(impact)


       