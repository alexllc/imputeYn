\name{imputeYn}
\alias{imputeYn}

\title{
Impute/treat the censored largest datum under weighted least squares method and right censoring}
\description{
The method is developed only for imputing the last largest censored datum if Kaplan-Meier weights are involved in modeling. The treating/imputing methods for the last largest censored datum under weighted least squares is developed for overcoming the problem that the tail correction (Efron, 1967) results in biased and inefficient estimates. Details are discussed in Khan and Shaw (2012a).
}
\usage{
imputeYn(X, Y, delta, method = "condMean", beta = NULL)
}
\arguments{ 
  \item{X}{
matrix of covariates. The order is typically n by p.
}
  \item{Y}{
response. Typically the logarithmic of the survival time.
}
  \item{delta}{
status; it includes value 1 for uncensored and value 0 for censored subject.}
  \item{method}{
one of "condMean (conditional mean)", "condMedian" (conditional median), "RcondMean (resampling based conditional mean)", "RcondMedian (resampling based conditional median)", "PDQ (predicted difference quantity)". Default is "condMean". Here only "PDQ" method works without covariate (X).  
}
  \item{beta}{
coefficients of the covariates estimated by any suitable method chosen by the user. If NULL, the coefficients are estimated using the regularized weighted least squares method with ridge penalty and the censoring constraints and then optimized by quadratic programming. Default is NULL.}
}

\details{
For details, see Khan and Shaw (2012a, 2012b).
}
\value{
An "imputeYn" object is returned. It includes imputed value for the datum Y(n)+, response with imputed value for Y(n)+, status after reclassifying Y(n)+ into Y(n), coefficients of the covariates obtained with imputed value (newcoefficients) by aft.qp, and coefficients obtained without imputed value (coefficients) by aft.qp. 

}
\references{
Efron, B. (1967). The two sample problem with censored data. In Proceedings of the fifth Berkeley symposium on mathematical statistics and probability, Vol. 4, p. 831-853.

Khan, M. H. R. and Shaw, J. E. H. (2012a). On dealing with censored largest observations under weighted least squares (Preprint).

Khan, M. H. R., and Shaw, J. E. H. (2012b). Variable selection for the AFT model in high dimensions via regularized weighted least squares method (Preprint).

}
\author{
Hasinur Rahaman Khan and Ewart Shaw
}

\seealso{
\code{print.imputeYn}, \code{aft.qp}}

\examples{
# For uncorrelated dataset
data<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
imp<-imputeYn(data$x, data$y, data$delta, method = "condMean", beta=NULL)
imp

# For correlated dataset
data2<-data(n=100, p=4, r=0.5, b1=c(2,2,3,3), sig=1, Cper=0)
imp2<-imputeYn(data2$x, data2$y, data2$delta, method = "condMean", beta=NULL)
imp2
}

\keyword{imputation}
