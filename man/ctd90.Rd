\name{ctd90}

\docType{data}

\alias{ctd90}

\title{CTD profile near the North Pole}

\description{This is station 33 of a 1994 cruise designated with expedition
    code 18SN19940724, with chief scientists K. Aagaard, E. Carmack and J.
    Swift.}

\usage{data(ctd90)}

\examples{
\dontrun{
library(oce)
data(ctd90)
par(mfrow=c(1, 2), mar=c(3, 3, 3, 1))
plot(ctd90, which=1)
par(mar=c(3, 1, 4, 1))
mapPlot(coastlineWorld, latitudelim=c(60,120), longitudelim=c(-130,-50), 
        proj="stereographic", orientation=c(90, -90, 0), 
        axes=FALSE, fill='lightgray')
mapPoints(ctd90[["longitude"]], ctd90[["latitude"]], pch=20, col='red')
}
}

\source{The data were downloaded from
    \code{http://cchdo.ucsd.edu/cruise/18SN19940724} on October 3, 2013.}

\seealso{The documentation for \code{\link[oce]{ctd-class}} explains the
    structure of CTD objects, and outlines functions dealing with them.}

\keyword{datasets}
