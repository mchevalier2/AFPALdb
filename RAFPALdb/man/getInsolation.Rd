% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getInsolation.R
\name{getInsolation}
\alias{getInsolation}
\title{Get monthly insolation values.}
\usage{
getInsolation(lat, month, from = 0, to = 1e+05)
}
\arguments{
\item{lat}{Latitude of the desired insolation. Integer between -90 and 90.}

\item{month}{Month of the desired insolation. Can be either an integer between 1 and 12 or a string among jan/feb/mar/apr/may/jun/jul/aug/sep/oct/nov/dcm.}

\item{from}{Beginning of the desired period of time. Default is '0'.}

\item{to}{End of the desired period of time. Default is '100,000'.}
}
\description{
This function allows to extract monthly insolation values at 500 years resolution between present and 100,000 years ago.
}
\examples{
getInsolation(65,"aug",0,35000)
getInsolation(-30,"dec",10000,0000)
}
\keyword{getInsolation}

