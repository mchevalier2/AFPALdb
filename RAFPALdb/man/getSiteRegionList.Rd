% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getTable.R
\name{getSiteRegionList}
\alias{getSiteRegionList}
\title{Get the SiteRegion table.}
\usage{
getSiteRegionList(ORDERBY = "Region")
}
\arguments{
\item{ORDERBY}{Set of variables (separated by a comma) to order the results by. Results sorted by 'Region' by default.}
}
\description{
This function allows you to get all the entries from the AFPALdb.SiteRegion table.
}
\examples{
siteregion=getSiteRegionList()
siteregion=getSiteRegionList("SRZ")
}
\keyword{getTable}

