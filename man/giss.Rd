\name{giss}

\docType{data}

\alias{giss}

\title{Time series of NASA/GISS land-ocean temperature index}

\description{A data frame containing the Goddard Institute for Space Studies
    (GISS) time series of surface temperature anomaly, with columns named
    \code{year} for decimal year (sampled monthly and represented at mid-month)
    and \code{index} for the temperature anomaly.  The details of the original
    data processing are provided in [2] and [3].  The data were downloaded from
    \url{http://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.txt} in
    September of 2014 and processed as follows.
\preformatted{
l <- readLines("giss.dat") # http://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.txt
l <- l[grep("^[1-2].*", l)]            # ignore headers at start, and every 20 years
l <- l[grep("\\*", l, invert=TRUE)]    # ignore partial lines
## year is in char 1 to 4; data in 0.01degC are in char 8 to 65
startyear <- scan(textConnection(l[1]), n=1)
index <- 0.01 * scan(textConnection(substr(l, 8, 65)))
year <- 1/24 + seq(startyear, by=1/12, length.out=length(Ta))
giss <- data.frame(year=year, index=index)
}
}

\usage{data(giss)}

\examples{
data(giss, package="ocedata")
## Compare the graph with Fig3 of Hansen et al. (2010)
plot(giss$year, giss$index, type='l', xlab="Year", ylab="Temperature Anomaly")
}

\source{The data were downloaded from [1].  See the NASA webpage [2] for a
    description of the data processing done by NASA, and [3] for a scientific
    paper on the matter.}
    
\references{

1. \url{http://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.txt}

2. \url{http://data.giss.nasa.gov/gistemp}

3. J. Hansen, R. Ruedy, M. Sato and K. Lo, 2010.  Global surface temperature
change.  Rev. Geophys., 48, RG4004.
(\url{http://pubs.giss.nasa.gov/abs/ha00510u.html})
    
}

\keyword{datasets}
