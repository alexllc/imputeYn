\name{data}
\alias{data}

\title{Generating Survival Data from Log-normal AFT Model}
\description{This gives the survival data generated from log-normal AFT model.}
\usage{
data(n, p, r, b1, sig, Cper)
}
\arguments{
  \item{n}{sample size.}
  \item{p}{the number of covariates. For the AFT model each covariate is generated from Uniform(0, 1) distribution}
  \item{r}{correlation between the covariates, r is set to 0 for no correlation.}
  \item{b1}{the vector of coefficients.}
  \item{sig}{this maintains noise ratio, 1 for no noise.}
  \item{Cper}{takes specific value for generating specific censoring percentage, e.g., -0.2 for 30 censoring percentage, 0.0 for 50 censoring percentage and 0.2 for 70 percentages.}
}
\details{
Generate survival data from a log-normal AFT model (Y = alpha + X (beta) + error; Y=log(T)) where error is N(0,1). The last largest datum is generated always as censored otherwise censorship is random with censoring time generated from Uniform (c, 2c) for a suitable c.}
\value{
  \item{y}{logarithmic of survival time}
  \item{x}{matrix of covariates of order n by p}
  \item{delta}{status; 1 for uncensored, o for censored}
  \item{Pper}{censoring percentage}
}
\references{
Khan and Shaw. (2013a). On Dealing with Censored Largest Observations under Weighted Least Squares. CRiSM working paper, Department of Statistics, University of Warwick, UK, No. 13-07. Also available in \url{http://arxiv.org/abs/1312.2533}.
}
\author{
Hasinur Rahaman Khan and Ewart Shaw}

\examples{
#Dataset with zero correlation between the covariates and the medium censoring level 
#(50 percent) 
data1<-data(n=100, p=2, r=0, b1=c(2,4), sig=1, Cper=0)
data1

#Dataset with moderate correlation between the covariates and the higher censoring level 
#(70 percent) 
data.r<-data(n=100, p=2, r=0.5, b1=c(2,4), sig=1, Cper=0.2)
data.r
}
\keyword{survival data}
