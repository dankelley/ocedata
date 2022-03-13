#' Wilson's (1963) table of seafloor spreading
#'
#' `wilson` holds Wilson's (1963) table of seafloor spreading, extracted from
#' his Table 1, taking only the first 3 columns, and only those rows for which
#' Wilson reported an estimate of spreading rate. This dataset was used in
#' Chapter 4 of Kelley (2018).
#
#' @name wilson
#'
#' @docType data
#'
#' @usage data(wilson, package="ocedata")
#'
#' @examples
#' data(wilson, package="ocedata")
#' plot(wilson$Age, wilson$Distance, xlab="Age [My]", ylab="Distance [km]",
#'     xlim=c(125,0), ylim=c(0,4000))
#' abline(0,4000/125)
#' m <- lm(Distance~Age-1, data=wilson)
#' # Wilson reports in cm/year; 1cm/y = 1km/1My * 1e5 / 1e6
#' spreadingRate <- as.numeric(coef(m)) / 10
#' print(spreadingRate)
#' abline(m, col=2)
#'
#' @references
#' Kelley, Dan E. Oceanographic Analysis with R. 1st ed. 2018. New York, NY: Springer New York:
#' Imprint: Springer, 2018. \doi{10.1007/978-1-4939-8844-0}.
#'
#' J. Tuzo Wilson, 1963. Evidence from islands on the spreading of ocean floors.
#' *Nature*, 197(4867):536-538. \doi{10.1038/197536a0}
NULL

