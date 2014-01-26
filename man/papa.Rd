\name{papa}

\docType{data}

\alias{papa}

\title{OWS Papa hydrographic record during 2010}

\description{This dataset holds the temperature and salinity measured at Ocean
    Weather Station Papa (50N, 145W) in the year 2010.  Time and vertical
    coordinate are in vectors \code{papa$t} and \code{papa$z}, while
    temperature, salinity and \eqn{\sigma_\theta}{sigma_theta} are in the
    matrices \code{papa$temperature}, \code{papa$salinity} and
    \code{papa$sigmaTheta}.  This is an excerpt from a larger dataset that
    spans 2007-06-08 to 2012-10-24, and it has been trimmed to just those z
    values that are common to the larger dataset, namely -1, -10, -20, -45,
    -80, -100, -120, -150, and -200.  Time is sampled daily, from 2011-01-01
    12:00:00 to 2011-12-31 12:00:00 UTC.}

\usage{data(papa)}

\source{Salinity is from
    \url{http://www.pmel.noaa.gov/stnP/data/daily/s50n145w_dy.ascii} and
    temperature is from
    \url{http://www.pmel.noaa.gov/stnP/data/daily/t50n145w_dy.ascii}.  Although
    there is a data file for \eqn{\sigma_\theta}{sigma-theta} on the NOAA
    website, here it was calculated with \code{swSigmaTheta} in the Oce
    package.}

\references{The larger data set is described at
    \url{http://www.pmel.noaa.gov/stnP/}, and related datasets can be found at
    \url{http://www.pmel.noaa.gov/stnP/data.html} in various formats.}
    
\keyword{datasets}
