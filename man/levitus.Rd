\name{levitus}

\docType{data}

\alias{levitus}

\title{Annually-averaged sea-surface temperature and salinity}

\description{Data from the 2013 version of the Levitus Ocean Atlas, in the form
    of a list containing \code{longitude}, \code{latitude}, and sea-surface
    salinity \code{SSS} and temperature \code{SST}.}

\examples{
\dontrun{
library(oce)
data(levitus)
par(mfrow=c(2,1))
imagep(levitus$longitude,levitus$latitude,levitus$SST,col=oceColorsJet,zlim=c(-2,30))
imagep(levitus$longitude,levitus$latitude,levitus$SSS,col=oceColorsJet,zlim=c(20,40))
}
}

\usage{data(levitus)}

\source{NOAA data repositories
\url{http://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/temperature/netcdf/decav/1.00/woa13_decav_t00_01.nc}
and
\url{http://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/salinity/netcdf/decav/1.00/woa13_decav_s00_01.nc}.}

\author{The profile data were compiled and cast upon a grid by NOAA [1, 2, 3],
    then subsetted to the top level and stored in an R list by Dan Kelley.}

\references{

[1] \url{http://www.nodc.noaa.gov/OC5/woa13/}

[2] Locarnini, R. A., A. V. Mishonov, J. I. Antonov, T. P. Boyer, H. E. Garcia,
O. K. Baranova, M. M. Zweng, C. R. Paver, J. R. Reagan, D. R. Johnson, M.
Hamilton, and D. Seidov, 2013. World Ocean Atlas 2013, Volume 1: Temperature.
S. Levitus, Ed., A. Mishonov Technical Ed.; NOAA Atlas NESDIS 73, 40 pp.

[3] Zweng, M.M, J.R. Reagan, J.I. Antonov, R.A. Locarnini, A.V. Mishonov, T.P.
Boyer, H.E. Garcia, O.K. Baranova, D.R. Johnson, D.Seidov, M.M. Biddle, 2013.
World Ocean Atlas 2013, Volume 2: Salinity. S. Levitus, Ed., A. Mishonov
Technical Ed.; NOAA Atlas NESDIS 74, 39 pp.  }

\keyword{datasets}
