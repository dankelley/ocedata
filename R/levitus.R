#' Annually-averaged sea-surface temperature and salinity
#'
#' Sea-surface temperature and salinity from the 2013 version of the World
#' Ocean Atlas (WOA), commonly referred to as the Levitus atlas, in the form of
#' a list containing `longitude`, `latitude`, and sea-surface
#' salinity `SSS` and temperature `SST`.  See References 2 and 3
#' for more information about the dataset.
#'
#' The `levitus` dataset was constructed from the World Ocean Atlas as of
#' 2013, downloaded from Reference 1.  The data were read with
#' \CRANpkg{ncdf4}, and the top layers of temperature and salinity were
#' selected.  Then longitude was shifted from (0,360) notation to the
#' (-180,180) notation used by \CRANpkg{oce}.
#'
#' @name levitus
#'
#' @docType data
#'
#' @usage data(levitus, package="ocedata")
#'
#' @examples
#' data(levitus, package="ocedata")
#' attach(levitus)
#'\dontrun{
#' oce::imagep(longitude, latitude, SST, col=oceColorsTemperature, zlim=c(-2, 30))
#' oce::imagep(longitude, latitude, SSS, col=oceColorsSalinity, zlim=c(20, 40))
#'}
#'
#' @references
#' 1. \url{https://www.nodc.noaa.gov/OC5/woa13/}
#'
#' 2. Locarnini, R. A., A. V. Mishonov, J. I. Antonov, T. P. Boyer, H. E. Garcia,
#' O. K. Baranova, M. M. Zweng, C. R. Paver, J. R. Reagan, D. R. Johnson, M.
#' Hamilton, and D. Seidov, 2013. World Ocean Atlas 2013, Volume 1: Temperature.
#' S. Levitus, Ed., A. Mishonov Technical Ed.; NOAA Atlas NESDIS 73, 40 pp.
#'
#' 3. Zweng, M.M, J.R. Reagan, J.I. Antonov, R.A. Locarnini, A.V. Mishonov, T.P.
#' Boyer, H.E. Garcia, O.K. Baranova, D.R. Johnson, D.Seidov, M.M. Biddle, 2013.
#' World Ocean Atlas 2013, Volume 2: Salinity. S. Levitus, Ed., A. Mishonov
#' Technical Ed.; NOAA Atlas NESDIS 74, 39 pp.
NULL
