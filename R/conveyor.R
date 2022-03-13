#' Conveyor-belt path
#'
#' Locations that yield a spline that roughly matches Broecker's
#' conveyor-belt path.
#'
#' The data were digitized from Figure 1 of Broecker (1991), by a multistep
#' process. First, a world map was drawn with `mapPlot` from the `oce` package,
#' using a projection (Mercator) that seemed similar to of Broecker. Second,
#' [locator()] was used to digitize points along his conveyor-belt pathlines.
#' No projection information being provided by Broecker, this had to be done by
#' coastline reference.  Third, the x-y data were converted to
#' longitude-latitude space using `map2lonlat()` in the `oce` package. When
#' this was done, splines were fitted to the data and the resultant paths were
#' drawn on the map (using code like that given in the example). Then, some
#' adjustments were made to the data files, to get the splines to more
#' faithfully represent the paths on Broecker's diagram.
#'
#' @name conveyor
#'
#' @docType data
#'
#' @examples
#' data(conveyor, package="ocedata")
#'\dontrun{
#' library(oce)
#' data(coastlineWorld, package="oce")
#' par(mar=rep(1,4))
#' oce::mapPlot(coastlineCut(coastlineWorld,70), projection="+proj=wintri +lon_0=70")
#' # Main path
#' lon <- subset(conveyor, path==1)$longitude
#' lat <- subset(conveyor, path==1)$latitude
#' oce::mapLines(lon, lat, col="blue", lwd=3)
#' ## Secondary path (in Indian Ocean)
#' lon <- subset(conveyor, path==2)$longitude
#' lat <- subset(conveyor, path==2)$latitude
#' oce::mapLines(lon, lat, col="darkgreen", lwd=3)}
#'
#' @usage data(conveyor, package="ocedata")
#'
#' @references
#' Broecker, W. S., 1991.  The great ocean conveyor.
#' *Oceanography*, 4: 79-89.
NULL
