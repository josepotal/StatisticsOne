# Lecture 6 Segment 2
# Test/re-test reliabilty analysis

setwd("C:/Users/jotal/Dropbox (Personal)/COURSERA/5. R and Statistics/0. Statistics One")

library(psych)

#read data
impact.col <- read.table('stats1_ex03.txt', header =TRUE)
colnames(impact.col)[1] <- "memory.verbal.A"

class(impact.col)
names(impac.col)

#Descriptive stats
describe(impact.col)

#Correlations (A & B)
cor(impact.col$memory.verbal.A,impact.col$memory.verbal.B)
cor(impact.col$memory.visual.A,impact.col$memory.visual.B)
cor(impact.col$speed.vismotor.A,impact.col$speed.vismotor.B)
cor(impact.col$speed.general.A,impact.col$speed.general.B)
cor(impact.col$impulse.control.A,impact.col$impulse.control.B)

--------------------------
setwd("C:/Users/jotal/Dropbox (Personal)/COURSERA/5. R and Statistics/0. Statistics One")

#read data
impact.row <- read.table('stats1_ex03-row.txt', header =TRUE)
colnames(impact.row)[1] <- "test"

class(impact.row)
names(impact.row)

#Descriptive statistics (describeBy)
describeBy(impact.row,impact.row$test)

#Correlations (A & B)
cor(impact.row$memory.verbal[impact.row$test=='A'],impact.row$memory.verbal[impact.row$test=='B'])
cor(impact.row$memory.visual[impact.row$test=='A'],impact.row$memory.visual[impact.row$test=='B'])
cor(impact.row$speed.vismotor[impact.row$test=='A'],impact.row$speed.vismotor[impact.row$test=='B'])
cor(impact.row$speed.general[impact.row$test=='A'],impact.row$speed.general[impact.row$test=='B'])
cor(impact.row$impulse.control[impact.row$test=='A'],impact.row$impulse.control[impact.row$test=='B'])
