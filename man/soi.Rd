\name{soi}

\docType{data}

\alias{soi}

\title{Southern Oscillation Index}

\description{A data frame containing the Southern Oscillation Index with
    columns named \code{year} for decimal year (sampled monthly and represented
    at mid-month) and \code{index} for the index.  The data frame was created
    in September of 2014 as follows.
\preformatted{
f <- "http://www.cgd.ucar.edu/cas/catalog/climind/SOI.signal.ascii"
d <- as.matrix(read.table(f, header=FALSE))
nYear <- nrow(d)
startYear <- d[1, 1]
endYear <- d[nYear, 1]
## Centre times to mid-month
year <- 1 / 24 + seq(from=startYear, by=1/12, length.out=nYear*12)
index <- as.vector(t(d[,-1]))
## Trim -99.99 values (may be some at start or end)
missing <- index < -90
year <- year[!missing]
index <- index[!missing]
soi <- data.frame(year=year, index=index)
}
}

\examples{
\dontrun{
library(ocedata)
data(soi)
## Source website graphs 1950 to 2014 (although they smooth data)
recent <- subset(soi, year > 1950)
plot(recent$year, recent$index, type='l')
}
}

\usage{data(soi)}

\source{\url{http://www.cgd.ucar.edu/cas/catalog/climind/SOI.signal.ascii}}
    
\author{Dan Kelley}

\keyword{datasets}

