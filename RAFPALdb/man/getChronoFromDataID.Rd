% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getChronoFromDataID.R
\name{getChronoFromDataID}
\alias{getChronoFromDataID}
\title{Extract datasets from the database}
\usage{
getChronoFromDataID(Dataset_ID, Uncertainties = FALSE)
}
\arguments{
\item{Dataset_ID}{ID of the dataset that needs its little chronology.}

\item{Uncertainties}{Boolean value for the extraction of chronological uncertainties.}
}
\description{
This function allows you to extract the chronology of a dataset identified by its ID.
}
\examples{
chrono1=getChronoFromDataID(49)
chrono2=getChronoFromDataID(49,TRUE)
}
\keyword{Chronology}
\keyword{Dataset}

