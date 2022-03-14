#' Redfield's (1934) NO3 and total CO2 data
#'
#' Data digitized from Redfield's (1934) Figure 3, showing
#' \eqn{\textrm{NO}_3}{NO3} dependence on total \eqn{\textrm{CO}_2}{CO2}.
#'
#' @name redfieldNC
#'
#' @docType data
#'
#' @usage data(redfieldNC, package="ocedata")
#'
#' @examples
#' data(redfieldNC, package="ocedata")
#' plot(redfieldNC$CO2, redfieldNC$NO3,
#'     xlab=expression(CO[2]), ylab=expression(NO[3]))
#' slope <- 1/7
#' abline(-275.5, slope, lwd=3)
#' abline(-288.5, slope, lwd=3)
#'
#' @family data related to Redfield (1934)
#'
#' @references
#' Alfred C. Redfield, 1934.  On the proportions of organic derivations in sea
#' water and their relation to the composition of plankton.  Pages 177--192 in
#' James Johnstone Memorial Volume, University Press of Liverpool.
NULL
