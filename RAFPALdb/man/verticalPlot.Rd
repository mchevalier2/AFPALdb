% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/verticalPlot.R
\name{verticalPlot}
\alias{verticalPlot}
\title{Generate a correlation plot.}
\usage{
verticalPlot(dat, x.range = range(unlist(lapply(dat, function(z)
  return(range(z[, 1], na.rm = TRUE))))), xstep = 1000, reverse = rep(FALSE,
  length(dat)), ystep = unlist(lapply(dat, function(z)
  return(round(diff(range(z[, 2]))/6, 1)))), adjust = TRUE,
  relativeHeight = rep(1, length(dat)), COL = sample(colors(), length(dat)),
  CEX = 1, exportPDF = TRUE, savePDF = paste(getwd(), "/VerticalPlot.pdf",
  sep = ""), xlab = "Age", WIDTH = 3.54, HEIGHT = 9)
}
\arguments{
\item{dat}{A list of two-columns matrixes that contains the data to plot.}

\item{x.range}{Min and max values to plot on the x-axis. Default values are calculated from the min and max values from 'dat'.}

\item{xstep}{Distance between vertical lines.}

\item{reverse}{Vector of boolean values that indicates whether the record should be plotted upside down. Default is FALSE.}

\item{ystep}{Vector that contains the distance between tickmarks on the y-axes. Dafault is 1/6th of the total range.}

\item{adjust}{Set to TRUE (default) to reduce the white space between the curves.}

\item{relativeHeight}{Vector that indicates the relative height each curve should add. By default, all curves have the same space allocated.}

\item{COL}{Vector of colors. Random selection of color by default.}

\item{CEX}{Size of the text. Default to 1.}

\item{exportPDF}{Boolean to indicate whether the figure should be save in a pdf.}

\item{savePDF}{Adress and name of the pdf. Default is "VarticalPlot.pdf" in the working directory.}

\item{xlab}{Label of the x-axis.}

\item{WIDTH}{Width of the pdf in inches (Default is 3.54in=90mm).}

\item{HEIGHT}{Height of the pdf in inches (Default is 9in=22-230mm).}
}
\description{
This figure measures the correlation between two records at different periods and with different time windows.
}
\examples{
d1=getData(Citation_Key="Chase_etal_2013",Record_Name="SWP-1-1",Proxy.Uncer=FALSE,Chrono.Uncer=FALSE,Proxy="d15N") ; d1=cbind(d1$Chronology,d1$Data$Data)
d2=getData(Citation_Key="Chase_etal_2013",Record_Name="SWP-1-1",Proxy.Uncer=FALSE,Chrono.Uncer=FALSE,Proxy="d13C") ; d2=cbind(d2$Chronology,d2$Data$Data)
d3=getData(Citation_Key="Chase_etal_2013",Record_Name="SWP-1-5",Proxy.Uncer=FALSE,Chrono.Uncer=FALSE,Proxy="d13C") ; d3=cbind(d3$Chronology,d3$Data$Data)
d4=getData(Citation_Key="Chase_etal_2013",Record_Name="SWP-1-5",Proxy.Uncer=FALSE,Chrono.Uncer=FALSE,Proxy="d15N") ; d4=cbind(d4$Chronology,d4$Data$Data)
dat=list("SWP11-d15N"=d1,"SWP11-d13C"=d2,"SWP15-d13C"=d3,"SWP15-d15N"=d4)
verticalPlot(dat,adjust=TRUE,reverse=c(TRUE,FALSE,FALSE,TRUE),x.range=c(0,8000),xstep=1000,xlab="Age (Cal BP)",relativeHeight=c(2,2,2,2))
}
\keyword{Plot}

