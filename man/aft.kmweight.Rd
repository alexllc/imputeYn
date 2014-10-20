\name{aft.kmweight}
\alias{aft.kmweight}

\title{Compute Kaplan-Meier weights}
\description{Compute Kaplan-Meier weights that are used for weighted least squares to solve the AFT model under right censoring. This gives weights that are computed after implementation of Efron's (1967) tail correction.}
\usage{
aft.kmweight(Y, delta)}
\arguments{
  \item{Y}{survival time.}
  \item{delta}{status.}
}
\value{The Kaplan-Meier weights are proper in the sense that they sum one. The censoring considered here is right censoring only.
  \item{kmwt }{The Kaplan Meier weights}
}
\references{
Stute, W. (1993). Consistent estimation under random censorship when covariables are available. Journal of Multivariate Analysis, 45 , 89-103.

Efron, B. (1967). The two sample problem with censored data. In Proceedings of the fifth Berkeley symposium on mathematical statistics and probability, Vol. 4, p. 831-853.}

\author{Hasinur Rahaman Khan and Ewart Shaw}

\examples{
# For dataset where the last largest datum is censored and censoring level is 50 percent
data<-data(n=100, p=2, r=0, b1=c(2,4), sig=1, Cper=0)
kmw<-aft.kmweight(data$y,data$delta)
kmw
}

\keyword{weighting}
