% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/credit-class.R
\name{SurvivalProbabilities}
\alias{SurvivalProbabilities}
\title{Builds a \code{SurvivalProbabilitiesCurve}}
\usage{
SurvivalProbabilities(values, d1, d2, specs)
}
\arguments{
\item{values}{a vector of survival probabilities corresponding to each
time step in \code{tenors}.}

\item{d1}{a \code{Date} vector containing the as of date}

\item{d2}{a \code{Date} vector containing the date to which the survival probability
applies}

\item{specs}{CDS curve specifications that inherits from \code{\link[=CDSSpec]{CDSSpec()}}}
}
\value{
returns an object of type \code{SurvivalProbabilitiesCurve}
}
\description{
This will allow you to create a survival probability curve. This will
typically be bootstrapped from a \code{\link[=CDSCurve]{CDSCurve()}}.
}
\examples{
SurvivalProbabilities(0.97, Sys.Date(), Sys.Date() + 30, CDSSpec("Empty"))
}
\seealso{
Other CDS curve helpers: \code{\link{CDSCurve}},
  \code{\link{CDSMarkitSpec}},
  \code{\link{CDSSingleNameSpec}}, \code{\link{CDSSpec}},
  \code{\link{ZeroHazardRate}}, \code{\link{is.CDSCurve}},
  \code{\link{is.CDSSpec}}
}
\concept{CDS curve helpers}
