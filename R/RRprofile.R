#' Seawater profile used by Reiniger and Ross (1968)
#'
#' `RRprofile` is the hydrographic profile used by Reiniger and Ross
#' (1968, Table 2) to illustrate the use of their method for interpolating
#' oceanographic data.
#'
#' @name RRprofile
#'
#' @docType data
#'
#' @usage data(RRprofile, package="ocedata")
#'
#' @references
#' R.F. Reiniger and C.K. Ross, 1968.  A method of
#' interpolation with application to oceanographic data.  *Deep Sea
#' Research*, 15, 185-193.
#'
#' @examples
#' data(RRprofile, package="ocedata")
#'\dontrun{
#' library(oce)
#' par(mgp=getOption('oceMgp'))
#' par(mar=c(3,3,1,1))
#' ctd <- as.ctd(RRprofile$salinity, RRprofile$temperature, RRprofile$depth)
#' plot(ctd)
#' zz <- seq(0,2000,5)
#' plot(RRprofile$temperature, RRprofile$depth, ylim=c(500,0), xlim=c(2,11),
#'      xlab="Temperature", ylab="Depth [m]")
#' TT <- oceApprox(RRprofile$depth, RRprofile$temperature, zz)
#' lines(TT, zz)
#' a <- approx(RRprofile$depth, RRprofile$temperature, zz)
#' lines(a$y, zz, col='red')
#' s <- smooth.spline(RRprofile$depth, RRprofile$temperature)
#' lines(predict(s, zz)$y, zz, col='blue')
#' legend("topright", lwd=1, col=c("black", "red", "blue"),
#'       legend=c("oceApprox", "approx", "smooth.spline"), cex=2/3)
#'}
NULL

