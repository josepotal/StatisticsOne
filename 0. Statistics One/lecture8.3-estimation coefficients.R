#LEcture 8.3 Matrix Algebra

#step 1: generate raw matrix
O = matrix(rnorm(30,4,1),10,3)
Xnp = round(O,0)
Xnp

#step2: row vector of sums
I1n<-as.vector(rep.int(1,10))
I1n
T1p = I1n %*% Xnp
T1p

# row vector of means
library(mnormt)
library(MASS)
N <- 10
Ninv <- as.numeric(ginv(N))
Ninv
M1p <- T1p * Ninv 
M1p

#matrix of means
In1 <- matrix(rep.int(1,10),10,1)  #column vector
Mnp <-In1 %*% M1p 
Mnp

#Matrix of deviation scores
Dnp <- Xnp - Mnp
Dnp

#Sums of squares and crossproducts matrix
Dpn <-t(Dnp)
Dpn
Sxx1 <- Dpn %*% Dnp
Sxx1 

#Correlation matrix
library(MASS)
Sxx <-Sxx1[2:3,2:3] 
Sxx
Sxx.inv <- ginv(Sxx)
Sxy<- Sxx1[2:3,1]
Sxy
B =  Sxx.inv %*% Sxy
B
#The output should be the same as using "cor" function
demo<- as.data.frame(Xnp)
colnames(demo)<- c('Y','X1','X2')
demo

model = lm(demo$Y ~ demo$X1+demo$X2)
summary(model)


