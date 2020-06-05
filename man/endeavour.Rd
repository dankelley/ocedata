\name{endeavour}

\docType{data}

\alias{endeavour}

\title{Cook's Endeavour cruise track}

\description{Time, longitude, and latitude for the H.M.S. Endeavour cruise,
    1768-1771}

\usage{data(endeavour)}

\examples{
data(endeavour, package="ocedata")
\dontrun{
    library(oce)
    data(coastlineWorld, package="oce")
    oce::mapPlot(coastlineWorld, type='l', proj='+proj=moll', fill='lightgray')
    oce::mapPoints(endeavour$longitude, endeavour$latitude, pch=20, cex=2/3, col='red')
}
}

\source{The data were extracted from an XML file contained within a zipfile
    provided at the Australian government website
    \url{https://www.data.gov.au/dataset/7f03ac78-7210-4702-8cd5-f3e373f4097b},
    last checked 2015 Feb 5.}

\keyword{datasets}
