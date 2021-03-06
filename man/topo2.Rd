\name{topo2}

\docType{data}

\alias{topo2}

\title{World topography data, on a 2-degree grid.}

\description{A matrix containing world topography data, on a 2-degree grid.
    This is provided for occasions where the higher resolution topography in
    \code{topoWorld} from the Oce package is not needed. See \dQuote{Examples} for a plot that
    illustrates the longitude and latitude grid for the data.}

\usage{data(topo2)}

\examples{
\dontrun{
# Compare with topoWorld in oce
    data(topoWorld, package="oce")
    w <- topoWorld
    contour(w[['longitude']], w[['latitude']], w[['z']], level=0, drawlabels=FALSE)
    data(topo2, package="ocedata")
    lon <- seq(-179.5, 178.5, by=2)
    lat <- seq(-89.5, 88.5, by=2)
    contour(lon, lat, topo2, level=0, add=TRUE, col='red', lty='dotted', drawlabels=FALSE)
}
}

\source{The data are calculated by applying \code{oce::decimate} to the
    \code{topoWorld} dataset from the \code{oce} package, followed by
    extraction of the \code{"z"} value.}

\keyword{datasets}

