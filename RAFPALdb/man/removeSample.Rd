% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MonteCarloStacking.R
\name{removeSample}
\alias{removeSample}
\title{Remove a sample from a Monte-Carlo object.}
\usage{
removeSample(dat, n, site)
}
\arguments{
\item{dat}{The classic Monte-Carlo object generated by Interpolation.init().}

\item{n}{ID of the sample(s) to remove.}

\item{site}{Name of the Record to remove samples from.}
}
\description{
Remove a sample from a Monte-Carlo object.
}
\examples{
Pella.init=removeSample(Pella.init,21,"PEL-1-1")
}
\keyword{Monte-Carlo}

