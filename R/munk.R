#' Munk's (1966) temperature profile
#'
#' Temperature profile digitized from the left-hand panel of Munk's
#' Figure 1.
#'
#' @name munk
#'
#' @docType data
#'
#' @usage data(munk, package="ocedata")
#'
#' @examples
#' data(munk, package="ocedata")
#' plot(munk$temperature, munk$depth,
#'     ylim=rev(range(munk$depth)),
#'     xlab="Temperature [degC]", ylab="Depth [km]")
#'
#' @references
#' Walter H. Munk, 1966. Abyssal recipes. *Deep-Sea Research*, 13, 707-730.
NULL
