\name{soi}

\docType{data}

\alias{soi}

\title{Southern Oscillation Index}

\description{A data frame containing the Southern Oscillation Index with
    columns named \code{year} for decimal year (sampled monthly and represented
    at mid-month) and \code{index} for the index.}

\examples{
data(soi, package="ocedata")
recent <- subset(soi, year > 1950)
plot(recent$year, recent$index, type='l', xlab="Year", ylab="SOI")
}

\usage{data(soi)}

\source{The data come from the netcdf file named \code{SOI.nc}, downloaded from
    \url{http://www.cgd.ucar.edu/cas/catalog/climind/soi.html} on January 10,
    2016 and then processed with the foll.}
    
\author{Dan Kelley}

\keyword{datasets}

