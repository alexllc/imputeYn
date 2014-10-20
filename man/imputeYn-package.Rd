\name{imputeYn-package}
\docType{package}
\title{Imputing the Last Largest Censored Observation(s) under Weighted Least Squares
}
\description{
If Kaplan-Meier weights are involved in modeling, especially solving AFT model using weighted least squares method, the package gives alternative choices to the Efron's tail correction approach that brings estimates with less bias and more efficiency
}
\details{
\tabular{ll}{
Package: \tab imputeYn\cr
Type: \tab Package\cr
Version: \tab 1.2\cr
Date: \tab 2014-10-20\cr
License: \tab GPL\cr
Depends:\tab emplik, mvtnorm, quadprog, survival\cr
}
}
\author{
Hasinur Rahaman Khan and Ewart Shaw
Maintainer: Hasinur Rahaman Khan <hasinurkhan@gmail.com>
}
\references{
Efron, B. (1967). The two sample problem with censored data. In Proceedings of the fifth Berkeley symposium on mathematical statistics and probability, Vol. 4, p. 831-853.

Jin et al. (2006). On least-squares regression with censored data. Biometrika, 93 (1), 147-161.

Khan and Shaw. (2013a). On Dealing with Censored Largest Observations under Weighted Least Squares. CRiSM working paper, Department of Statistics, University of Warwick, UK, No. 13-07. Also available in \url{http://arxiv.org/abs/1312.2533}.

Khan and Shaw (2013b). Variable Selection with The Modified Buckley-James Method and The Dantzig Selector for High-dimensional Survival Data. Proceedings 59th ISI World Statistics Congress, 25-30 August 2013, Hong Kong, p. 4239-4244.

Stute, W. (1993). Consistent estimation under random censorship when covariables are available. Journal of Multivariate Analysis, 45 , 89-103.
}
\keyword{ package }
\examples{
#For uncorrelated dataset
data<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
imp<-imputeYn(data$x, data$y, data$delta, method = "condMean", beta=NULL)
imp
}
