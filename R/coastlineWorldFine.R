#' World coastline at fine-scale (1:10M) resolution
#'
#' `coastlineWorldFine` is analogous to \code{\link{coastlineWorldMedium}}, but
#' at higher resolution, i.e. showing more detail.  It may be used for regional
#' (sub-basin) views, but for coastal work, users should consider downloading a
#' file at finer resolution.
#'
#' The data for `coastlineWorldFine` were downloaded from shapefile
#' `ne_10m_admin_0_countries.shp`, stored at
#' \url{https://www.naturalearthdata.com}.
#'
#' The documentation for `coastline-class` in \CRANpkg{oce} explains the
#' structure of coastline objects and discusses functions that deal with them.
#'
#' @name coastlineWorldFine
#'
#' @docType data
#'
#' @usage
#' data(coastlineWorldFine, package="ocedata")
#'
#' @family coastline files
#'
#' @examples
#' # Regional plot of the Maritime provinces of Canada.
#' data(coastlineWorldFine, package="ocedata")
#'\dontrun{
#' library(oce)
#' plot(coastlineWorldFine, clongitude=-63, clatitude=45.5, span=600)}
NULL

