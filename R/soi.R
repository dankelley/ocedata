#' Southern Oscillation Index
#'
#' `soi` is a data frame containing the Southern Oscillation Index with
#' columns named `year` for decimal year (sampled monthly and represented
#' at mid-month) and `index` for the index.
#'
#' The data were downloaded on August 11, 2017, and processed as follows.
#'
#'```R
#' library(ncdf4)
#' url <- "https://www.cgd.ucar.edu/cas/catalog/climind/SOI.nc"
#' download.file(url, "SOI.nc")
#' f <- nc_open("SOI.nc")
#' year <- as.vector(ncvar_get(f, "TIME"))
#' index <- as.vector(ncvar_get(f, "SOI_SIGNAL"))
#' ok <- is.finite(index)
#' year <- year[ok]
#' index <- index[ok]
#' soi <- data.frame(year=year, index=index)
#'```
#'
#' @name soi
#'
#' @docType data
#'
#' @usage data(soi, package="ocedata")
#'
#' @examples
#' data(soi, package="ocedata")
#' recent <- subset(soi, year > 1950)
#' plot(recent$year, recent$index, type='l', xlab="Year", ylab="SOI")
NULL

