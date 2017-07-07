\name{soi}

\docType{data}

\alias{soi}

\title{Southern Oscillation Index}

\description{A data frame containing the Southern Oscillation Index with
    columns named \code{year} for decimal year (sampled monthly and represented
    at mid-month) and \code{index} for the index.}

\details{The data were downloaded from [1] and processed with the following
    \preformatted{
library(ncdf4)
url <- "https://www.cgd.ucar.edu/cas/catalog/climind/SOI.nc"
download.file(url, "SOI.nc")
f <- nc_open("SOI.nc")
year <- as.vector(ncvar_get(f, "TIME"))
index <- as.vector(ncvar_get(f, "SOI_SIGNAL"))
ok <- is.finite(index)
year <- year[ok]
index <- index[ok]
soi <- data.frame(year=year, index=index)
    }
}

\examples{
data(soi, package="ocedata")
recent <- subset(soi, year > 1950)
plot(recent$year, recent$index, type='l', xlab="Year", ylab="SOI")
}

\usage{data(soi)}

\source{[1] The source data were downloaded as
    \url{http://www.cgd.ucar.edu/cas/catalog/climind/SOI.nc} on August 26,
    2016.}
    
\author{Dan Kelley}

\keyword{datasets}

