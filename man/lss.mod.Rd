\name{lss.mod}
\alias{lss.mod}

\title{
The modified least squares pricnciple for solving the AFT model
}
\description{
This is a modified version of the package `lss' developed by Jin, Lin and Ying (2006). The Least squares principle is developed for solving the AFT model with possibly right censored data. The modification is done by introducing a ridge estimator as an initial estimator that takes into account the correlation between the covariates and censoring information while optimizing using quadratic programming. 
}
\usage{
lss.mod(formula, data, subset, trace = FALSE, mcsize = 500, maxiter = 10, 
tolerance = 0.001, cov = FALSE, na.action = na.exclude, residue = FALSE)
}
\arguments{
  \item{formula}{specifies a model to be fitted. The response and covariates of the model are separated by a ~ operator. The response, on the left side of ~, should be a Surv object with two columns, of which the first column is the survival time or censored time and the second column is the censoring indicator. The covariates X, on the right side of ~, should be columns with the same length
as Surv object. eg: lss(Surv(time, status)~).
}
  \item{data}{
a data frame that contains the Surv objects and covariates.
}
  \item{subset}{
specifies subset of the original data frame that should be used for the model fit.
}
  \item{trace}{
takes logical values TRUE or FALSE. If TRUE, then the summary of every iteration will be kept. Default is FALSE.}
  \item{mcsize}{
specifies the resampling number. The default is 500.}
  \item{maxiter}{
specifies the maximum iteration number. The iterations will be stopped after
maxiter iterations if the convergence criterion is not met. Default is 50.}
  \item{tolerance}{
specifies the value of convergence criterion. Default is 0.01.}
  \item{cov}{
takes logical values TRUE or FALSE. If cov=TRUE, the covariance matrices ofthe least-squares estimator will be printed. Default is FALSE.}
  \item{na.action}{
takes values na.exclude or na.fail. The default is na.exclude, which deletes the
observations with missing values. The other choice is na.fail, which returns an
error if any missing values are found.}
  \item{residue}{
takes two value TRUE or FALSE. Default is FALSE. If TRUE then it shows the residuals.}

}

\value{
The least-squares estimator, the standard error of the least-squares estimator, the Z score and the p-value for testing the hypothesis of beta=0.
The covariance matrices of the least-squares estimator, if cov is set to T.
}

\references{
Jin, Z., Lin, D. Y., & Ying, Z. (2006). On least-squares regression with censored data. Biometrika, 93 (1), 147-161.

Khan, M. H. R. and Shaw, J. E. H. (2012a). On dealing with censored largest observations under weighted least squares (Preprint).
}

\author{
Hasinur Rahaman Khan and Ewart Shaw
}

\seealso{\code{imputeYn}, \code{print.imputeYn}
}

\examples{
# For uncorrelated datset with four covariates and 50 percent censoring 
data<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
\donttest{fit.lss.mod<-lss.mod(cbind(data$y, data$delta) ~ da$x,mcsize=500,trace=FALSE,maxiter=50,
 tolerance=0.01)}
\donttest{fit.lss.mod}

# For correlated datset with 50 percent censoring 
data2<-data(n=100, p=4, r=0.5, b1=c(2,2,3,3), sig=1, Cper=0)
\donttest{fit.lss.mod2<-lss.mod(cbind(data2$y, data2$delta) ~ data2$x, mcsize=500,trace=FALSE,
 maxiter=50, tolerance=0.01)}
\donttest{fit.lss.mod2}
}
\keyword{least-squares
}
