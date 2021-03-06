% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{confint.hetmeta}
\alias{confint.hetmeta}
\title{Confidence Intervals for 'hetmeta' Objects}
\usage{
\method{confint}{hetmeta}(object, parm, level, rma.type = FALSE, ...)
}
\arguments{
\item{object}{an object of class \code{hetmeta} produced by \code{\link{hetmeta}}.}

\item{parm}{this argument is here for compatability with the generic function confint, but is (currently) ignored.}

\item{level}{numerical value between 0 and 100 specifying the confidence interval level (if unspecified, the default is to take the value from the object).}

\item{rma.type}{to obtain the confidence interval for I2 as in 'confint.rma.uni'.}

\item{\dots}{further arguments passed to or from other methods.}
}
\value{
The \code{confint} function returns a matrix with the estimate, standard error, and confidence intervals for
the heterogeneity measures estimated by "\code{hetmeta}" (\eqn{R_b}, \eqn{I^2}, \eqn{R_I}, and \eqn{CV_b})
}
\description{
The function calculates confidence intervals for the heterogeneity measures in a 'hetmeta' object.
}
\details{
The confidence intervals are constructed based on the (asymptotic) normal
distribution of the estimators. Standard error are derived using the delta method.
See the references for more details.
}
\examples{
## load BCG vaccine data
data(dat.bcg)

## random-effects model of log relative risks
dat <- escalc(measure="RR", ai=tpos, bi=tneg, ci=cpos, di=cneg, data=dat.bcg)
res <- rma(yi, vi, data=dat)

## heterogeneity measures
het <- hetmeta(res)
confint(het)
}
\references{
Takkouche B, Khudyakov P, Costa-Bouzas J, Spiegelman D. Confidence Intervals for Heterogeneity Measures in Meta-analysis. \emph{Am. J. Epidemiol.} 2013:kwt060.

Crippa A, Khudyakov P, Wang M, Orsini N, Spiegelman D. A new measure of between-studies heterogeneity in meta-analysis. 2016. \emph{Stat. Med.} In Press.
}
\seealso{
\code{\link{hetmeta}}
}
\author{
Alessio Crippa, \email{alessio.crippa@ki.se}
}
