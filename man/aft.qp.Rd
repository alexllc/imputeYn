\name{aft.qp}
\alias{aft.qp}

\title{Fit regularized weighted least squares method by quadratic programming for AFT model 
}
\description{The AFT model is solved using weighted least squares with ridge penalty and censoring constraints (Khan and Shaw, 2012b). The optimization is based on quadratic programming that facilitates incorporating additional censoring constraints into the model}
\usage{
aft.qp(X, Y, delta)
}
\arguments{
  \item{X}{the covariate matrix of size n by p.}
  \item{Y}{survival time.}
  \item{delta}{status.}
}
\details{The ridge penalty used here is 0.01 sqrt(2log(p))}
\value{
Only gives the parameter estimates as below
  \item{beta0 }{the intercept of the AFT model}
  \item{beta }{the coefficients of the covariates}
}

\references{
Khan, M. H. R. and Shaw, J. E. H. (2012a). On dealing with censored largest observations under weighted least squares (Preprint).

Khan, M. H. R., and Shaw, J. E. H. (2012b). Variable selection for the AFT model in high dimensions via regularized weighted least squares method (Preprint)
}

\author{
Hasinur Rahaman Khan and Ewart Shaw
}

\seealso{
imputeYn}

\examples{
# For uncorrelated dataset
data<-data(n=100, p=2, r=0, b1=c(2,4), sig=1, Cper=0)
fit<-aft.qp(data$x, data$y, data$delta)
fit

# For correlated dataset
data2<-data(n=100, p=2, r=0.5, b1=c(2,4), sig=1, Cper=0)
fit2<-aft.qp(data2$x, data2$y, data2$delta)
fit2
}
\keyword{AFT model}
