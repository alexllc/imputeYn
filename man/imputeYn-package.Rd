\name{imputeYn-package}
\docType{package}
\title{Imputing the censored largest observation/observations under weighted least squares
}
\description{
If Kaplan-Meier weights are involved in modeling, especially solving AFT model using weighted least squares method, the package gives alternative choices to the Efron's tail correction approach that brings estimates with less bias and more efficiency
}
\details{
\tabular{ll}{
Package: \tab imputeYn\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2013-02-22\cr
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

Jin, Z., Lin, D. Y., & Ying, Z. (2006). On least-squares regression with censored data. Biometrika, 93 (1), 147-161.

Khan, M. H. R. and Shaw, J. E. H. (2012a). On dealing with censored largest observations under weighted least squares (Preprint).

Khan, M. H. R., and Shaw, J. E. H. (2012b). Variable selection for the AFT model in high dimensions via regularized weighted least squares method (Preprint).

Stute, W. (1993). Consistent estimation under random censorship when covariables are available. Journal of Multivariate Analysis, 45 , 89-103.
}
\keyword{ package }
\examples{
#For uncorrelated dataset
data<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
imp<-imputeYn(data$x, data$y, data$delta, method = "condMean", beta=NULL)
imp
}
