#' Measurements made at a buoy off Halifax
#'
#' `buoy` is a data frame holding hourly observations made between March 3 and
#' April 18 of 2014, at the Environment Canada 3-metre discus buoy situated at
#' (44.502N 63.403W) near Halifax Harbour.
#'
#' The contents are as follows; other items in the original data file are ignored.
#'
#' * `time`: time of observation, in [POSIXct()] format.
#' * `wind`: wind speed in m/s.
#' * `direction`: direction from which the wind is blowing, measured in degrees clockwise of true North.
#' * `gust`: gust speed in m/s.
#' * `height`: wave height in metres.
#' * `period`: wave period in seconds.
#' * `pa`: atmospheric pressure in kPa.
#' * `Ta`: air temperature in degC.
#' * `Tw`: water temperature in degC.

#' The data were downloaded as a file named `44258.txt` in April 2014 from
#' Reference 1, and made into a data frame.
#' See References 2 and 3 for information on the data in such buoys, and 4 for more
#' on this particular buoy.
#'
#' The code to create the dataset is given below.
#'```
#'d <- read.table("44258.txt", stringsAsFactors=FALSE, skip=2)
#'t <- ISOdatetime(d[,1], d[,2], d[,3], d[,4], d[,5], 0, tz="UTC")
#'o <- order(t)
#'# handle missing data
#'d[d == "MM"] <- NA
#'# put oldest first
#'t <- t[o]
#'d <- d[o,]
#'direction <- as.numeric(d[,6])
#'wind <- as.numeric(d[,7])
#'gust <- as.numeric(d[,8])[o]
#'height <- as.numeric(d[,9])
#'period <- as.numeric(d[,10])
#'pa <- as.numeric(d[,13])
#'Ta <- as.numeric(d[,14])
#'Tw <- as.numeric(d[,15])
#'```
#' @name buoy
#'
#' @docType data
#'
#' @usage data(buoy, package="ocedata")
#'
#' @examples
#' data(buoy, package="ocedata")
#' plot(buoy$time, buoy$wind, ylab="Wind Speed [m/s]")
#' plot(buoy$time, buoy$height, ylab="Wave height [m]")
#' plot(buoy$time, buoy$period, ylab="Wave period [s]")
#'
#' @references
#' 1. \url{https://www.ndbc.noaa.gov/data/realtime2/}
#' 2. \url{https://www.ndbc.noaa.gov/NDBCHandbookofAutomatedDataQualityControl2009.pdf}
#' 3. \url{https://www.ndbc.noaa.gov/measdes.shtml}
#' 4. `https://www.ndbc.noaa.gov/station_page.php?station=44258` (link seen to time out on
#' March 13, 2022).
NULL
