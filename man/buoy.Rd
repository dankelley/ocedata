\name{buoy}

\docType{data}

\alias{buoy}

\title{Measurements made at a buoy off Halifax}

\description{Hourly observations made between March 3rd and April 18th of 2014,
    at the Environment Canada 3-metre discus buoy situated at (44.502N 63.403W)
    near Halifax Harbour.

    The contents of the \code{buoy} data frame are as follows (other items in the
    data file are ignored).
    \describe{
        \item{\code{t}}{time of observation, in \code{POSISct} format}
        \item{\code{wind}}{wind speed in m/s}
        \item{\code{direction}}{direction from which the wind is blowing,
            measured in degrees clockwise of true North.}
        \item{\code{height}}{wave height in metres}
        \item{\code{period}}{wave period in seconds}
        \item{\code{pa}}{atmospheric pressure in kPa}
        \item{\code{Ta}}{air temperature in degC}
        \item{\code{Tw}}{water temperature in degC}
    }

    About two percent of the observation times are missing.

}

\examples{
library(oce)
data(buoy)
par(mfrow=c(3,1))
oce.plot.ts(buoy$t, buoy$wind, ylab="Wind Speed [m/s]")
oce.plot.ts(buoy$t, buoy$height, ylab="Wave height [m]")
oce.plot.ts(buoy$t, buoy$period, ylab="Wave period [s]")
}

\usage{data(buoy)}

\source{The data were downloaded as a file named \code{44258.txt} in April 2014
    from \url{http://www.ndbc.noaa.gov/data/realtime2/}, and made into a data
    frame.  See [1] and [2] for information on the data in such buoys, and [3]
    for more on this particular buoy.}
    
\references{\enumerate{\item\url{http://www.ndbc.noaa.gov/NDBCHandbookofAutomatedDataQualityControl2009.pdf}
        \item\url{http://www.ndbc.noaa.gov/measdes.shtml}
        \item\url{http://www.ndbc.noaa.gov/station_page.php?station=44258} }}

\keyword{datasets}

