#' North Atlantic Oscillation Index
#'
#' This is the North Oscillation Index, downloaded in May 2014 and processed as follows.
#'```
#' d <- scan("https://www.cpc.ncep.noaa.gov/products/precip/CWlink/pna/norm.nao.monthly.b5001.current.ascii.table")
#' isYear <- d > 1900
#' index <- d[!isYear]
#' year <- 1/24 + seq(d[isYear][1], by=1/12, length.out=length(index))
#' nao <- data.frame(year=year, index=index)
#'```
#'
#' @name nao
#'
#' @docType data
#'
#' @usage data(nao, package="ocedata")
#'
#' @examples
#' data(nao, package="ocedata")
#' plot(nao$year, nao$index, xlab="Year", ylab="NAO index", type="l", col="gray")
#' k <- kernel("fejer", m=25, r=2)
#' smoothed <- kernapply(nao$index, k, circular=TRUE)
#' lines(nao$year, smoothed, col=2)
NULL

