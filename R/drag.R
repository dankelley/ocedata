#' Wind drag coefficient
#'
#' `drag` holds wind drag coefficients for wind-profile and eddy-covariance
#' methods, summarized in Figure 3 of Garratt (1977).  The data are stored in a
#' data frame with four columns: `U` is wind speed in m/s; `Cd` is for
#' (neutral) drag coefficient; `n` is the number of data measurements
#' represented by the value; and `method` is a factor with two levels:
#' `profile` and `eddy`, for two methods of inferring `Cd`.
#'
#' The data were digitized from Figure 3 of Garratt (1977) by Dan Kelley.
#'
#' @name drag
#'
#' @docType data
#'
#' @usage data(drag, package="ocedata")
#'
#' @examples
#' data(drag, package="ocedata")
#' par(mar=c(3,3,1,1), mgp=c(2, 0.7, 0))
#' plot(drag$U, drag$Cd, pch=ifelse(drag$method == "profile", 1, 19),
#'     xlab="U [m/s]", ylab=expression(C[D]),
#'     xlim=c(0, 22), ylim=c(0, 3e-3))
#' legend("topleft", pch=c(1,19),
#'     legend=c("profile method", "eddy covariance method"))
#'
#'
#' @references
#' J. R. Garratt, 1977.  Review of drag coefficients over oceans and
#' continents. *Monthly Weather Review*, 105:915-927.
NULL
