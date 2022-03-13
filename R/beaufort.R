#' Beaufort Scale relationship wave height to wind speed
#'
#' `beaufort` is a data frame describing the Beaufort Scale for sea state.  The
#' contents are `wind`, the wind speed in m/s, and `height`, wave height in m.
#' The data were downloaded from Reference 1 on April 20, 2014.
#'
#' @name beaufort
#'
#' @docType data
#'
#' @usage data(beaufort, package="ocedata")
#'
#' @references
#' \url{https://www.metoffice.gov.uk/weather/marine/guide/beaufortscale.html}
#'
#' @examples
#' data(beaufort, package="ocedata")
#' plot(beaufort$wind, beaufort$height)
NULL

