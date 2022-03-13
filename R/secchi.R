#' Secchi depth dataset
#'
#' Measurements of Secchi depth in the North and Baltic Seas.
#'
#' The data were downloaded as a file named `Secchi_Ships.csv` that was
#' available from Reference 1 in October 2013 and then formed into a data frame
#' with new variable names, for use in R.  See Thorkild (2002) for more
#' information on the data.
#'
#' @name secchi
#'
#' @docType data
#'
#' @usage data(secchi, package="ocedata")
#'
#' @examples
#' data(coastlineWorldMedium, package="ocedata")
#' data(secchi, package="ocedata")
#'\dontrun{
#' logdepth <- log10(secchi$depth)
#' cm <- colormap(logdepth, col=oceColorsTurbo)
#' par(mar=c(3, 3, 2, 1))
#' oce::drawPalette(colormap=cm)
#' oce::plot(coastlineWorldMedium, clongitude=10, clatitude=60, span=3000,
#'     mar=par("mar"))
#' points(secchi$longitude, secchi$latitude, pch=20, col=cm$zcol)
#' title("log10 of secchi depth in m")}
#'
#'
#' @references
#' 1. `https://ocean.ices.dk/Project/SECCHI/` (noticed to be a broken link
#' on March 13, 2022).
#'
#' 2. Thorkild Aarup 2002, Transparency of the North Sea and Baltic
#' Sea--a Secchi Depth data mining study, *Oceanologia*, 44(3), 323-337.
NULL

