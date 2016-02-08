\name{levitus}

\docType{data}

\alias{levitus}
\alias{woa}

\title{Annually-averaged sea-surface temperature and salinity}

\description{Sea-surface temperature and salinity from the 2013 version of the
    World Ocean Atlas (WOA), commonly referred to as the ``Levitus'' atlas, in
    the form of a list containing \code{longitude}, \code{latitude}, and
    sea-surface salinity \code{SSS} and temperature \code{SST}.}

\details{The \code{levitus} dataset was constructed from the World Ocean Atlas
    as of 2013, downloaded from the link given in \dQuote{Source}. The data were read
    with \CRANpkg{ncdf4}, and the top layer of temperature and salinity were selected.
    Then longitude was shifted from (0,360) notation to the (-180,180) notation
    used by \CRANpkg{oce}.}

\examples{
\dontrun{
library(oce)
data(levitus, package="ocedata")
attach(levitus)
par(mfrow=c(2,1))
imagep(longitude, latitude, SST, col=oceColorsJet, zlim=c(-2, 30))
imagep(longitude, latitude, SSS, col=oceColorsJet, zlim=c(20, 40))
}
}

\usage{data(levitus)}

\source{\itemize{
        \item
\url{http://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/temperature/netcdf/decav/1.00/woa13_decav_t00_01.nc}
\item
\url{http://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/salinity/netcdf/decav/1.00/woa13_decav_s00_01.nc}
}}

\author{The atlas was constructed by NOAA personnel [1, 2, 3]. The top level
    was extracted and packaged in \code{ocedata} by Dan Kelley.}

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
