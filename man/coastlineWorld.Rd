\name{coastlineWorld}

\docType{data}

\alias{coastlineWorld}
\alias{coastlineWorldFine}
\alias{coastlineWorldCoarse}

\title{World coastline}

\description{World coastline, in any of three resolutions}

\usage{data(coastlineWorld)
data(coastlineWorldCoarse)
data(coastlineWorldFine)}

\details{The longitudes are in the range from -180 to 180 degrees, i.e.
    western longitudes have negative values.  The resolutions and typical
    applications are as follows:
    \itemize{
        \item \code{coastlineWorld} resolution 1:50M, suitable for
        world- or basin-scale plots
        \item \code{coastlineWorldFine} resolution 1:10M, suitable for
        shelf-scale plots (or world-scale plots on fast plotting devices)
        \item \code{coastlineWorldCoarse} resolution 1:110M, suitable for
        world-scale plots plotted at a small size
        }
}

\source{Downloaded from \url{http://www.naturalearthdata.com}, in three files:
    \code{ne_110m_admin_0_countries.shp} for \code{coastlineWorldCoarse},
    \code{ne_50m_admin_0_countries.shp} for \code{coastlineWorld}, and
    \code{ne_10m_admin_0_countries.shp} for \code{coastlineWorldFine}.}

\seealso{The documentation for \code{\link[oce]{coastline-class}} explains the
    structure of coastline objects, and also outlines the other functions
    dealing with them.}

\author{Dan Kelley}

\keyword{datasets}


