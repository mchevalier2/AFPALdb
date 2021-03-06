% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MonteCarloStacking.R
\name{exportMonteCarloStacking}
\alias{exportMonteCarloStacking}
\title{Export stacked reconstructions into .csv and .pdf files.}
\usage{
exportMonteCarloStacking(dat, saveData = getwd(), vline = seq(min(dat$XX),
  max(dat$XX), length.out = 11), XLAB = "Age")
}
\arguments{
\item{dat}{The classic Monte-Carlo object generated by Interpolation.init().}

\item{saveData}{Folder where to save the outputs (in the working folder by default).}

\item{vline}{List of position from where to draw a vertical dashed lines (the total xrange is divided in 10 equal intervals by default).}

\item{XLAB}{Label of the x-axis.}
}
\description{
Export stacked reconstructions into .csv and .pdf files.
}
\examples{
exportMonteCarloStacking(Pella.init,XLAB="Age (cal BP)")
}
\keyword{Monte-Carlo}
\keyword{Plot}

