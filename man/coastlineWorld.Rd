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

\details{In each case, the longitudes are in the range from -180 to 180 degrees, i.e.
    western longitudes have negative values.  Large lakes (particularly the Great Lakes)
    are missing from these datasets, since the intention is for use in ocean mapping.
    The resolutions of the three coastlines are listed below, along with
    typical applications.
    \itemize{

        \item \code{coastlineWorld} resolution 1:50M (with 100,954 points),
        suitable for world- or basin-scale plots

        \item \code{coastlineWorldFine} resolution 1:10M (with 552,670 points),
        suitable for shelf-scale plots

        \item \code{coastlineWorldCoarse} resolution 1:110M (with 10,696
        points), suitable for world-scale plots plotted at a small size, e.g.
        inset diagrams

        }
}

\source{Downloaded from \url{http://www.naturalearthdata.com}, in three files:
    \code{ne_110m_admin_0_countries.shp} for \code{coastlineWorldCoarse},
    \code{ne_50m_admin_0_countries.shp} for \code{coastlineWorld}, and
    \code{ne_10m_admin_0_countries.shp} for \code{coastlineWorldFine}.}

\seealso{The documentation for \code{\link[oce]{coastline-class}} explains the
    structure of coastline objects, and also outlines the other functions
    dealing with them.

    The \code{maps} package provides a database named \code{\link[maps]{world}}
    that has 27221 points, putting it intermediate between the Oce default and
    coarse versions.  This can be compared with Oce coastlines as follows.
    \preformatted{
library(oce)
library(maps)
xy <- maps:::map.poly('world')
coastline <- as.coastline(xy$x, xy$y)
plot(coastline, clat=47, clon=-63, span=1000)
lines(coastlineWorld[['longitude']],
      coastlineWorld[['latitude']], col='red')
lines(coastlineWorldFine[['longitude']],
      coastlineWorldFine[['latitude']], col='blue')
}
}

\author{Dan Kelley}

\keyword{datasets}


