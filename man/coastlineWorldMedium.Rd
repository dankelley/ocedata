\name{coastlineWorldMedium}

\docType{data}

\alias{coastlineWorldMedium}
\alias{coastlineWorldFine}

\title{World coastlines at medium and fine-scale resolution}

\description{World coastlines at medium and fine-scale resolution}

\usage{data(coastlineWorldMedium, package="ocedata")
data(coastlineWorldFine, package="ocedata")
}

\details{These datasets are analogous to \code{coastlineWorld} in
    the Oce package, but they are of finer resolution; a comparison table
    follows.

    \itemize{

        \item \code{coastlineWorld} is a coarse resolution 1:110M (with 10,696
        points), suitable for world-scale plots plotted at a small size, e.g.
        inset diagrams

        \item \code{coastlineWorldMedium} resolution 1:50M (with 100,954 points),
        suitable for world- or basin-scale plots

        \item \code{coastlineWorldFine} resolution 1:10M (with 552,670 points),
        suitable for shelf-scale plots

    }
}

\source{Downloaded from \url{http://www.naturalearthdata.com}, in files
    \code{ne_50m_admin_0_countries.shp} for \code{coastlineWorldMedium}, and
    \code{ne_10m_admin_0_countries.shp} for \code{coastlineWorldFine}.}

\seealso{The documentation for \code{coastline-class} in the Oce package
    explains the structure of coastline objects and discusses functions that
    deal with them.

    The \code{maps} package provides a database named \code{world}
    that has 27221 points, putting it intermediate between the Oce default and
    coarse versions.}

\examples{
data(coastlineWorldMedium, package="ocedata")
data(coastlineWorldFine, package="ocedata")
\dontrun{
library(oce)
plot(coastlineWorldMedium, clongitude=-63, clatitude=45.5, span=800)
lines(coastlineWorldFine[["longitude"]], coastlineWorldFine[["latitude"]],
      col=2, lwd=2)}
}


\author{Dan Kelley}

\keyword{datasets}

