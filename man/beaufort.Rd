\name{beaufort}

\docType{data}

\alias{beaufort}

\title{Beaufort scale relationship of wind speed to wave height}

\description{A data frame containing \code{wind}, the wind speed in m/s, and
    \code{height}, the probable wave height in m, both as suggested in the
    Beaufort Scale.}

\examples{
library(ocedata)
data(beaufort)
plot(beaufort$wind, beaufort$height)
}

\usage{data(beaufort)}

\source{The data were downloaded from
    \url{http://www.metoffice.gov.uk/weather/marine/guide/beaufortscale.html}
    on April 20, 2014.  Many other sources are also available.}

\keyword{datasets}

