\name{beaufort}

\docType{data}

\alias{beaufort}

\title{Beaufort scale relationship of wind speed to wave height}

\usage{data(beaufort)}

\description{A data frame containing \code{wind}, the wind speed in m/s, and
    \code{height}, the probable wave height in m, both as suggested in the
    Beaufort Scale.}

\examples{
data(beaufort, package="ocedata")
plot(beaufort$wind, beaufort$height)
}

\source{The data were downloaded from
    \url{https://www.metoffice.gov.uk/weather/marine/guide/beaufortscale.html}
    on April 20, 2014.  Many other sources are also available.}

\keyword{datasets}

