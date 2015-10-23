\name{imputeYn-package}
\docType{package}
\title{Imputing the Last Largest Censored Observation(s) Under Weighted Least Squares
}
\description{Method brings less bias and more efficient estimates for AFT models.}
\details{
\tabular{ll}{
Package: \tab imputeYn\cr
Type: \tab Package\cr
Version: \tab 1.3\cr
Date: \tab 2015-10-23\cr
License: \tab GPL\cr
Depends:\tab emplik, mvtnorm, quadprog, survival, boot\cr
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
data1<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
imp<-imputeYn(data1$x, data1$y, data1$delta, method = "condMean", beta=NULL)
imp
}
