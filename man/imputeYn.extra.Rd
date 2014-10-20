\name{imputeYn.extra}
\alias{imputeYn.extra}

\title{
Impute them if there are more than one censored largest observations including tied under weighted least squares method and right censoring}
\description{
The method is developed for imputing the largest censored observations (can be seen often for heavy censored data) if Kaplan-Meier weights are involved in modeling. For example, if weighted least squares is used then the extra imputing methods will provide one step ahead of the Efron's (1967) tail correction approach. These methods satisfy the Efron's tail correction, achieve less biased estimates, and impute the largest censored observations that are also tied. Furthermore the two methods satisfy the right censoring assumption. Details are discussed in Khan and Shaw (2013a).
}

\usage{
imputeYn.extra(Y, delta, hc.Yn, method = "km.TPQ", trans.sprob=NULL,
 stime2=NULL, sprob2=NULL, trace=F)
}

\arguments{ 
  \item{Y}{
response. Typically the logarithmic of the survival time.
}
  \item{delta}{
status; it includes value 1 for uncensored and value 0 for censored subject.
}
  \item{hc.Yn}{
set of the lifetimes for the last largest censored observations.
}
  \item{method}{
one of "it.PDQ" (repeated predicted difference quantity or called iterative (Khan and Shaw, 2013a)), "km.TPQ" (Kaplan-Meier trend predicted quantity or called "extrapolation" (Khan and Shaw, 2012a)). Default is "km.TPQ".
}
  \item{trans.sprob}{
use only for "km.TPQ". Transformation for the survival probabilities. This transformation is needed if survival probability versus survival time plot is not linear. It takes "exp" for exponential transformation, and any value for respective power transformation. Default is NULL.
}
  \item{stime2}{
use only for "km.TPQ". Survival times after necessary transformation if needed in order to obtain a linear relationship between the survival probability and survival time. Default is NULL.
}
  \item{sprob2}{
use only for "km.TPQ". Survival probability after necessary transformation if needed in order to obtain a linear relationship between the survival probability and survival time. Default is NULL.
}
  \item{trace}{
If TRUE then Kaplan-Meier survival plots will be printed for both data- the original and the data with imputed values. Default is FALSE.
}
}
\details{
If there is heavy censoring toward the right for right censored data, that is found as typical case for many areas like indistry, clinical trials etc, then this function provides the sensible imputations for those censored observations that are the largest and also tied observations. For details, see Khan and Shaw (2012b).
}
\value{
It includes sorted lifetimes, censoring indicators, sorted lifetimes after imputation, censoring indicators after imputation, censored lifetimes for the Y(n)+ observations, imputed lifetimes for the Y(n)+ observations, the survival times, the survival probabilities, the survival times after transformation, the survival probabilities after transformation, the transformation used, and trace.
}
\references{
Efron, B. (1967). The two sample problem with censored data. In Proceedings of the fifth Berkeley symposium on mathematical statistics and probability, Vol. 4, p. 831-853.

Khan and Shaw. (2013a). On Dealing with Censored Largest Observations under Weighted Least Squares. CRiSM working paper, Department of Statistics, University of Warwick, UK, No. 13-07. Also available in \url{http://arxiv.org/abs/1312.2533}.

Khan and Shaw (2013b). Variable Selection with The Modified Buckley-James Method and The Dantzig Selector for High-dimensional Survival Data. Proceedings 59th ISI World Statistics Congress, 25-30 August 2013, Hong Kong, p. 4239-4244.
}
\author{
Hasinur Rahaman Khan and Ewart Shaw}
\examples{
## For Channing House data (heavy censored data)##
\donttest{data(package = "boot", channing)}
\donttest{time.ch<-channing[1:97,]$time} #for male
\donttest{delta.ch<-channing[1:97,]$cens} # for male
\donttest{hc.Yn.m<-rep(137,19)} # there are 19 last largest censored male each has 137 lifetime
\donttest{imp.PDQ<-imputeYn.extra(time.ch, delta.ch,  hc.Yn=hc.Yn.m, 
  method="it.PDQ", trace=T)}
\donttest{imp.PDQ}

\donttest{imp.TPQ<-imputeYn.extra(time.ch, delta.ch, hc.Yn=hc.Yn.m, 
  method = "km.TPQ", trace=T)}
\donttest{imp.TPQ}
}
\keyword{imputation}