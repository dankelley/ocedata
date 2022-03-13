#' Redfield's (1934) Table II
#'
#' Contents of Redfield's (1934) Table II, containing columns for sampled
#' species, carbon content by weight (normalized to 100), Nitrogen content by
#' weight, and Phosphorus content by weight. This dataset is used in Chapter 4
#' of Kelley (2018).
#'
#' @name redfieldPlankton
#'
#' @docType data
#'
#' @usage data(redfieldPlankton, package="ocedata")
#'
#' @examples
#' data(redfieldPlankton, package="ocedata")
#' par(mfrow=c(1,2))
#' boxplot(redfieldPlankton$Nitrogen)
#' abline(h=16.7, col='gray')
#' boxplot(redfieldPlankton$Phosphorus)
#' abline(h=1.85, col='gray')
#'
#' @family data related to Redfield (1934)
#'
#' @references
#' 1. Kelley, Dan E. Oceanographic Analysis with R. 1st ed. 2018. New York, NY:
#' Springer New York: Imprint: Springer, 2018. \doi{10.1007/978-1-4939-8844-0}.
#'
#' 2. Alfred C. Redfield, 1934.  On the proportions of organic derivations in
#' sea water and their relation to the composition of plankton.  Pages 177--192
#' in James Johnstone Memorial Volume, University Press of Liverpool.
NULL
