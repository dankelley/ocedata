#' Redfield's (1934) NO3 and PO4 data
#'
#' Data digitized from Redfield's (1934) Figure 1, showing
#' \eqn{\textrm{NO}_3}{NO3} dependence on \eqn{\textrm{PO}_4}{PO4}.  This
#' dataset is used in Chapter 4 of Kelley (2018).
#'
#' @name redfieldNP
#'
#' @docType data
#'
#' @usage data(redfieldNP, package="ocedata")
#'
#' @examples
#' data(redfieldNP, package="ocedata")
#' plot(redfieldNP$PO4, redfieldNP$NO3,
#'     xlab=expression(PO[4]), ylab=expression(NO[3]))
#' abline(0, 20, lwd=3)  # slope N:P = 20:1, shown by Redfield
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
