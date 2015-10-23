\name{aft.qp}
\alias{aft.qp}

\title{Fiting Regularized Weighted Least Squares Method by Quadratic Programming}
\description{The AFT model is solved by quadratic programming.}
\usage{
aft.qp(X, Y, delta)
}
\arguments{
  \item{X}{the covariate matrix of size n by p.}
  \item{Y}{survival time.}
  \item{delta}{status.}
}
\details{The AFT model is solved using weighted least squares with ridge penalty and censoring constraints (Khan and Shaw, 2013b). The optimization is based on quadratic programming that facilitates incorporating additional censoring constraints into the model. The ridge penalty used here is 0.01 sqrt(2log(p))}
\value{
Only gives the parameter estimates as below
  \item{beta0 }{the intercept of the AFT model}
  \item{beta }{the coefficients of the covariates}
}

\references{
Khan and Shaw. (2013a). On Dealing with Censored Largest Observations under Weighted Least Squares. CRiSM working paper, Department of Statistics, University of Warwick, UK, No. 13-07. Also available in \url{http://arxiv.org/abs/1312.2533}.

Khan and Shaw (2013b). Variable Selection with The Modified Buckley-James Method and The Dantzig Selector for High-dimensional Survival Data. Proceedings 59th ISI World Statistics Congress, 25-30 August 2013, Hong Kong, p. 4239-4244.
}

\author{
Hasinur Rahaman Khan and Ewart Shaw
}

\seealso{
imputeYn}

\examples{
# For uncorrelated dataset
data1<-data(n=100, p=2, r=0, b1=c(2,4), sig=1, Cper=0)
fit<-aft.qp(data1$x, data1$y, data1$delta)
fit

# For correlated dataset
data2<-data(n=100, p=2, r=0.5, b1=c(2,4), sig=1, Cper=0)
fit2<-aft.qp(data2$x, data2$y, data2$delta)
fit2
}
\keyword{AFT model}
