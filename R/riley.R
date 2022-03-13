#' Riley's (1946) observation and theory of phytoplankton concentration
#'
#' `riley` is a list holding information relating to Riley's (1946) observation and theory of
#' phytoplankton concentration, used in Chapter 4 of Kelley (2018).
#'
#' The elements of `riley` are as follows.
#'
#' * `fig21points` is a data frame representing the data shown in Riley's Figure 21.  Resulting from
#' digitization of his graph, this is a list containing `day` (day in year) and `P` (phytoplankton
#' concentration, in grams of Carbon per square meter.
#'
#' * `fig21curve` is a data frame with columns named `day` and `P`, containing a digitized trace of
#' the curve with which Riley illustrates his numerical solution of the differential equations for
#' phytoplankton growth.
#'
#' * `DEparameters` (from Riley's (1946) appendix) is a list containing data about twice per month,
#' in elements `day` for the day of the year, `Ph` for phytoplankton growth rate, \code{R} for
#' phytoplankton respiration rate, and `G` for the rate at which zooplankton graze on phytoplankton.
#' The rates are in inverse days.
#'
#' @name riley
#'
#' @docType data
#'
#'
#' @usage data(riley, package="ocedata")
#'
#' @examples
#' data(riley, package="ocedata")
#' plot(riley$fig21points$day, riley$fig21points$P, xlab="Day of Year", ylab="Phytoplankton [gC/m^2]")
#' lines(riley$fig21curve$day, riley$fig21curve$P)
#'
#' @references
#' Kelley, Dan E. Oceanographic Analysis with R. 1st ed. 2018. New York, NY: Springer New York:
#' Imprint: Springer, 2018. \doi{10.1007/978-1-4939-8844-0}.
#'
#' Gordon A. Riley, 1946.  Factors controlling phytoplankton populations on Georges Bank.
#' *Journal of Marine Research*, 6(1): 54-73.
NULL

