#LEcture 8 Matrix Algebra

#step 1: generate raw matrix
O = matrix(rnorm(30,4,1),10,3)
Xnp = round(O,0)

#step2: row vector of sums
I1n<-as.vector(rep.int(1,10))
T1p = I1n %*% Xnp
T1p

# row vector of means
library(mnormt)
N<-10
Ninv <- as.numeric(pd.solve(N))
M1p <- T1p * Ninv 
M1p

#matrix of means
In1 <- matrix(rep.int(1,10),10,1)
Mnp <-In1 %*% M1p 
Mnp

#Matrix of deviation scores
Dnp <- Xnp -Mnp
Dnp

#Sums of squares and crossproducts matrix
Dpn <-t(Dnp)
Dpn
Sxx <- Dpn %*% Dnp
Sxx     # the diagonal is the Sum of Squares
        # off-diagonal are the cross products

#Variance-covariance matrix
Cxx <- Sxx * Ninv
Cxx     # the diagonal is the variance
        # off-diagonal is the covariance

#Diagonal matrix of standard deviations
Sxx1 <- sqrt(diag(Cxx))
Sxx1 <- diag(Sxx1)
Sxx1

#Correlation matrix
library(MASS)
Sxx1.inv <- ginv(Sxx1)
Rxx <- Sxx1.inv %*% Cxx %*% Sxx1.inv
Rxx

#The output should be the same as using "cor" function
cor(Xnp)


