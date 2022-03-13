#' Gulf Stream position
#'
#' Monthly latitude and longitude of Gulf Stream position, averaged from 1973
#' to 1992, according to Drinkwater et al. 1994 (page 103), in the form of a
#' list containing `month`, the numbers 1 through 12, `longitude`, the
#' longitudes in degrees east, and `latitude`, a matrix of latitudes, with
#' columns for months and rows for longitudes.  The data were entered by hand
#' by Dan Kelley, and may suffer errors resulting from typos and inaccurate
#' reading of occasionally blurry digits.
#'
#' @name gs
#'
#' @docType data
#'
#' @usage data(gs, package="ocedata")
#'
#' @examples
#' data(gs, package="ocedata")
#'\dontrun{
#' library(oce)
#' data(coastlineWorldMedium, package="ocedata")
#' plot(coastlineWorldMedium, span=3200,
#'     clongitude=mean(gs$longitude), clatitude=mean(gs$latitude))
#' data(topoWorld, package="oce")
#' contour(topoWorld[["longitude"]]-360,
#'     topoWorld[["latitude"]], -topoWorld[["z"]],
#'     level=1000*(1:5), col='brown', add=TRUE)
#' for (i in gs$month)
#'     lines(gs$longitude, gs$latitude[,i], col='blue')}
#'
#' @references
#' K. F. Drinkwater, R. A Myers, R. G. Pettipas and T. L. Wright, 1994.
#' Climatic data for the northwest Atlantic: the position of the shelf/slope
#' front and the northern boundary of the Gulf Stream between 50W and 75W,
#' 1973-1992.  Canadian Data Report of Fisheries and Ocean Sciences 125.
#' Department of Fisheries and Oceans, Canada.
NULL
