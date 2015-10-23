\name{imputeYn}
\alias{imputeYn}

\title{
Imputing the Censored Largest Datum Under Weighted Least Squares Method}
\description{
The method gives imputed values for the last largest censored datum.
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
The method is developed only for imputing the last largest censored datum if Kaplan-Meier weights are involved in modeling. The treating/imputing methods for the last largest censored datum under weighted least squares is developed for overcoming the problem that the tail correction (Efron, 1967) results in biased and inefficient estimates. Details are discussed in Khan and Shaw (2013a). For details, see Khan and Shaw (2013a, 2013b).
}
\value{
An "imputeYn" object is returned. It includes imputed value for the datum Y(n)+, response with imputed value for Y(n)+, status after reclassifying Y(n)+ into Y(n), coefficients of the covariates obtained with imputed value (newcoefficients) by aft.qp, and coefficients obtained without imputed value (coefficients) by aft.qp. 

}
\references{
Efron, B. (1967). The two sample problem with censored data. In Proceedings of the fifth Berkeley symposium on mathematical statistics and probability, Vol. 4, p. 831-853.

Khan and Shaw. (2013a). On Dealing with Censored Largest Observations under Weighted Least Squares. CRiSM working paper, Department of Statistics, University of Warwick, UK, No. 13-07. Also available in \url{http://arxiv.org/abs/1312.2533}.

Khan and Shaw (2013b). Variable Selection with The Modified Buckley-James Method and The Dantzig Selector for High-dimensional Survival Data. Proceedings 59th ISI World Statistics Congress, 25-30 August 2013, Hong Kong, p. 4239-4244.
}
\author{
Hasinur Rahaman Khan and Ewart Shaw
}

\seealso{
\code{print.imputeYn}, \code{aft.qp}}

\examples{
# For uncorrelated dataset
data1<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
imp<-imputeYn(data1$x, data1$y, data1$delta, method = "condMean", beta=NULL)
imp

# For correlated dataset
data2<-data(n=100, p=4, r=0.5, b1=c(2,2,3,3), sig=1, Cper=0)
imp2<-imputeYn(data2$x, data2$y, data2$delta, method = "condMean", beta=NULL)
imp2
}

\keyword{imputation}
