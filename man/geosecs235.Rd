\name{geosecs235}

\docType{data}

\alias{geosecs235}

\title{GEOSECS station 235 data}

\description{GEOSECS station 235 data}

\usage{data(geosecs235)}

\examples{
\dontrun{
library(oce)
data(geosecs235, package="ocedata")
## Similar to Figure 10 of Kelley and Van Scoy (1999)
plotProfile(geosecs235, xtype="tritium", type='p', ylim=c(600, 0))
}
}

\source{Data from
    \code{https://iridl.ldeo.columbia.edu/SOURCES/.GEOSECS/ISTA/235/VALUE/data.cdf},
    a netCDF file.}

\references{D. E. Kelley and Van Scoy, K. A., 1999.  A basin-wide estimate of
    vertical mixing in the upper pycnocline: spreading of bomb tritium in the
    North Pacific Ocean.  \emph{Journal of Physical Oceanography},
    29:1759--1771.}

\keyword{datasets}
