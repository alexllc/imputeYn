\name{print.imputeYn}
\alias{print.imputeYn}

\title{Print the important components of the class "imputeYn"}
\description{
Print the imputed value for the censored largest datum, the coefficients of the covariates with or without the imputed value. The coefficients that consider the imputated value are labelled as "new coefficients."
}
\usage{
\method{print}{imputeYn}(x, digits = max(3, getOption("digits") - 3), ...)
}
\arguments{
  \item{x}{the object of class "imputeYn".}
  \item{digits}{outputs with how many digits. Default is 3.}
  \item{\dots}{not used.}
}

\value{
Gives three important components of the class "imputeYn"- the imputed value for the last largest censored datum, coefficients of the covariates after tail correction, and coefficients of the covariates for dataset with imputed last datum.}

\references{
Khan, M. H. R. and Shaw, J. E. H. (2012a). On dealing with censored largest observations under weighted least squares (Preprint).
}

\author{
Hasinur Rahaman Khan and Ewart Shaw
}

\seealso{
imputeYn}

\examples{
# For uncorrelated dataset
data<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
imp<-imputeYn(data$x, data$y, data$delta, method = "condMean", beta=NULL)
print.imputeYn(imp)

# For correlated dataset
data2<-data(n=100, p=4, r=0.5, b1=c(2,2,3,3), sig=1, Cper=0)
imp2<-imputeYn(data2$x, data2$y, data2$delta, method = "condMean", beta=NULL)
print.imputeYn(imp2)
}
