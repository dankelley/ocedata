#' World coastline at medium-scale (1:50M) resolution
#'
#' `coastlineWorldMedum` is analogous to `coastlineWorld` in the \CRANpkg{oce}
#' package, but at higher resolution, i.e. showing more detail.  It is suitable
#' for basin-scale plots; for sub-basin work, try \code{\link{coastlineWorldFine}}.
#'
#' The data for `coastlineWorldMedium` were downloaded from shapefile
#' `ne_50m_admin_0_countries.shp`, stored at
#' \url{https://www.naturalearthdata.com}.
#'
#' The documentation for `coastline-class` in \CRANpkg{oce} explains the
#' structure of coastline objects and discusses functions that deal with them.
#'
#' @name coastlineWorldMedium
#'
#' @docType data
#'
#' @usage data(coastlineWorldMedium, package="ocedata")
#'
#' @family coastline files
#'
#' @examples
#' # Regional plot of the Maritime provinces of Canada.
#' data(coastlineWorldMedium, package="ocedata")
#'\dontrun{
#' library(oce)
#' plot(coastlineWorldMedium, clongitude=-63, clatitude=45.5, span=600)
#'}
NULL
