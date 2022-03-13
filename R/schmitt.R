#' Schmitt's (1981) NACW temperature-salinity data
#'
#' Schmitt's (1981) temperature-salinity data for North Atlantic Central Water.
#' The data were digitized from Schmitt's Figure 1, to a tolerance of about
#' half the symbol size in that diagram.  Schmitt reported the original data
#' source as a cruise of the vessel T. G. Thompson in 1970, and a location of
#' 25.2N and 35.8W.
#'
#' @name schmitt
#'
#' @docType data
#'
#' @usage data(schmitt, package="ocedata")
#'
#' @examples
#' data(schmitt, package="ocedata")
#'\dontrun{
#' oce::plotTS(as.ctd(schmitt$S, schmitt$theta, 0), eos="unesco")}
#'
#' @references
#' R. W. Schmitt, 1981.  Form of the temperature-salinity relationship in
#' central water: evidence for double-diffusive mixing.  *Journal of Physical
#' Oceanography*, 11:1015-1026. \doi{10.1175/1520-0485(1981)011<1015:FOTTSR>2.0.CO;2}
NULL

