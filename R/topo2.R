#' World topography on a 2-degree grid
#'
#' `topo2` is a  matrix containing world topography data, on a 2-degree grid.
#' This is provided for occasions where the higher resolution topography in
#' `topoWorld` from the Oce package is not needed. See \dQuote{Examples} for a
#' plot that illustrates the longitude and latitude grid for the data.
#'
#' The data are calculated by applying [oce::decimate()] to the `topoWorld`
#' dataset from the \CRANpkg{oce} package, followed by extraction of the `"z"` value.
#'
#' @name topo2
#'
#' @docType data
#'
#' @usage data(topo2, package="ocedata")
#'
#' @examples
#' # Coastline and 2 km isobath
#' data(topo2, package="ocedata")
#' lon <- seq(-179.5, 178.5, by=2)
#' lat <- seq(-89.5, 88.5, by=2)
#' contour(lon, lat, topo2, asp=1, drawlabels=FALSE,
#'     level=c(0,-2000), col=c(1,2))
NULL

