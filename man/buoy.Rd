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

\usage{data(buoy)}

\examples{
\dontrun{
library(oce)
data(buoy, package="ocedata")
par(mfrow=c(3,1))
oce.plot.ts(buoy$t, buoy$wind, ylab="Wind Speed [m/s]")
oce.plot.ts(buoy$t, buoy$height, ylab="Wave height [m]")
oce.plot.ts(buoy$t, buoy$period, ylab="Wave period [s]")
}
}


\source{The data were downloaded as a file named \code{44258.txt} in April 2014
    from \url{http://www.ndbc.noaa.gov/data/realtime2/}, and made into a data
    frame.  See [1] and [2] for information on the data in such buoys, and [3]
    for more on this particular buoy.  The code to create the dataset is given below.
\preformatted{
d <- read.table("44258.txt", stringsAsFactors=FALSE, skip=2)
t <- ISOdatetime(d[,1], d[,2], d[,3], d[,4], d[,5], 0, tz="UTC")
o <- order(t)
## missing data
d[d == "MM"] <- NA
## put oldest first
t <- t[o]
d <- d[o,]
footPerMetre <- 39.3701 / 12
direction <- as.numeric(d[,6])
wind <- as.numeric(d[,7])
height <- as.numeric(d[,9])
period <- as.numeric(d[,10])
pa <- as.numeric(d[,13])
Ta <- as.numeric(d[,14])
Tw <- as.numeric(d[,15])
}
}
    
\references{\enumerate{\item\url{http://www.ndbc.noaa.gov/NDBCHandbookofAutomatedDataQualityControl2009.pdf}
        \item\url{http://www.ndbc.noaa.gov/measdes.shtml}
        \item\url{http://www.ndbc.noaa.gov/station_page.php?station=44258} }}

\keyword{datasets}

