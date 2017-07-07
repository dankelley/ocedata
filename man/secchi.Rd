\name{secchi}

\docType{data}

\alias{secchi}

\title{Secchi depth dataset}

\description{Measurements of secchi depth in the North and Baltic Seas}

\examples{
\dontrun{
library(oce)
data(secchi, package="ocedata")
mapPlot(coastlineWorld, longitudelim=c(-5, 20), latitudelim=c(50, 66),
        grid=5, fill='gray', proj="lambert",
        parameters=c(lat0=50, lat1=65))
col <- rev(oceColorsJet(100))[rescale(secchi$depth, xlow=0, xhigh=20, rlow=1, rhigh=100)]
mapPoints(secchi$longitude, secchi$latitude, pch=20, cex=1, col=col)
mapPolygon(coastlineWorld, col='gray')
}
}

\usage{data(secchi)}

\source{The data were downloaded as a file named \code{Secchi_Ships.csv} in
    October 2013 from \url{https://ocean.ices.dk/Project/SECCHI/}, and made into
    a data frame with new variable names, for use in R.  See references for
    more on the data.}
    
\references{Thorkild Aarup 2002, Transparency of the North Sea and Baltic
    Sea--a Secchi Depth data mining study, \emph{Oceanologia}, 44(3), 323-337.}

\keyword{datasets}
