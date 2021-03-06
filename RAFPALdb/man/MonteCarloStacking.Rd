% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MonteCarloStacking.R
\name{MonteCarloStacking}
\alias{MonteCarloStacking}
\title{Perform the Monte-Carlo stacking.}
\usage{
MonteCarloStacking(dat, exportData = FALSE, saveData = getwd())
}
\arguments{
\item{dat}{The classic Monte-Carlo object generated by Interpolation.init().}

\item{exportData}{Boolean (default FALSE) to save the individual interpolations.}

\item{saveData}{Folder where to save the outputs (in the working folder by default).}

\item{centring}{A vector of values to center data. Using the output of MonteCarloCentring() is recommended.}
}
\description{
Perform the Monte-Carlo stacking.
}
\examples{
Pella.init=MonteCarloStacking(Pella.init,exportData=TRUE)
}
\keyword{Monte-Carlo}

