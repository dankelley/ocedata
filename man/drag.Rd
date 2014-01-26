\name{drag}

\docType{data}

\alias{drag}

\title{Wind drag coefficient}

\description{Wind drag coefficients for wind-profile and eddy-covariance
    methods, summarized in Figure 3 of Garratt (1977).  The data are stored in
    a data frame with four columns: \code{U} is wind speed in m/s; \code{Cd} is
    for (neutral) drag coefficient; \code{n} is the number of data measurements
    represented by the value; and \code{method} is a factor with two levels:
    \code{profile} and \code{eddy}, for two methods of inferring \code{Cd}.}

\usage{data(drag)}

\source{Data digitized from Figure 3 of Garratt (1977) by Dan Kelley.}

\references{J. R. Garratt, 1977.  Review of drag coefficients over oceans and
    continents. \emph{Monthly Weather Review}, 105:915-927.}

\keyword{datasets}
