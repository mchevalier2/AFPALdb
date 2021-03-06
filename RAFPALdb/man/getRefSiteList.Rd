% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getTable.R
\name{getRefSiteList}
\alias{getRefSiteList}
\title{Get the RefSite table.}
\usage{
getRefSiteList(ORDERBY = "Citation_Key,Record_Name")
}
\arguments{
\item{ORDERBY}{Set of variables (separated by a comma) to order the results by. Results sorted by 'Citation_Key x Record_Name' by default.}
}
\description{
This function allows you to get all the entries from the AFPALdb.RefSite table.
}
\examples{
refsite=getRefSiteList()
refsite=getRefSiteList("Record_Name")
}
\keyword{getTable}

