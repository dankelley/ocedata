#' Geometries of the five world oceans
#'
#' Surface areas, average depths, and maximum depths for five world oceans,
#' calculated from the ETOPO-1 dataset.  Area is in square metres (converted
#' from square kilometres on the NOAA site), and depths are in metres.
#'
#' The data were downloaded from the NOAA website
#' \url{https://ngdc.noaa.gov/mgg/global/etopo1_ocean_volumes.html} in October
#' 2012.
#'
#' @name oceans
#'
#' @docType data
#'
#' @usage data(oceans, package="ocedata")
#'
#' @examples
#' data(oceans, package="ocedata")
#' dotchart(oceans$Area, rownames(oceans), main="Surface Area [m^2]",
#'     xlim=c(0, max(oceans$Area)))
#'
#' @references
#' Amante, C. and B. W. Eakins, ETOPO1 1 Arc-Minute Global Relief
#' Model: Procedures, Data Sources and Analysis. NOAA Technical Memorandum
#' NESDIS NGDC-24, 19 pp, March 2009.
NULL
