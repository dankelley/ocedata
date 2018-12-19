\name{gs}

\docType{data}

\alias{gs}

\title{Gulf Stream position}

\description{Monthly latitude and longitude of Gulf Stream position, averaged
    from 1973 to 1992, according to Drinkwater et al. 1994 (page 103), in the
    form of a list containing \code{month}, the numbers 1 through 12,
    \code{longitude}, the longitudes in degrees east, and \code{latitude}, a
    matrix of latitudes, with columns for months and rows for longitudes.  The
    data were entered by hand by Dan Kelley, and may suffer errors resulting
    from typos and inaccurate reading of occasionally blurry digits.}

\examples{
\dontrun{
library(oce)
data(gs, package="ocedata")
data(coastlineWorldMedium, package="ocedata")
plot(coastlineWorldMedium,
     clon=mean(gs$longitude), clat=mean(gs$latitude), span=3200)
data(topoWorld)
contour(topoWorld[["longitude"]]-360, 
        topoWorld[["latitude"]], -topoWorld[["z"]],
        level=1000*(1:5), col='brown', add=TRUE)
for (i in gs$month)
    lines(gs$longitude, gs$latitude[,i], col='blue')
}
}

\usage{data(gs)}

\source{Department of Fisheries and Oceans online library
    at \url{http://www.dfo-mpo.gc.ca/Library/166053.pdf}
}

\references{K. F. Drinkwater, R. A Myers, R. G. Pettipas and T. L. Wright,
    1994.  Climatic data for the northwest Atlantic: the position of the
    shelf/slope front and the northern boundary of the Gulf Stream between 50W
    and 75W, 1973-1992.  Canadian Data Report of Fisheries and Ocean Sciences
    125.  Department of Fisheries and Oceans, Canada.  }

\keyword{datasets}

