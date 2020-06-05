\name{secchi}

\docType{data}

\alias{secchi}

\title{Secchi depth dataset}

\description{Measurements of Secchi depth in the North and Baltic Seas}

\examples{
data(coastlineWorldMedium, package="ocedata")
data(secchi, package="ocedata")
\dontrun{
    logdepth <- log10(secchi$depth)
    cm <- colormap(logdepth)
    par(mar=c(3, 3, 2, 1))
    oce::drawPalette(colormap=cm)
    oce::plot(coastlineWorldMedium, clongitude=10, clatitude=60, span=4000,
              mar=par("mar"))
    points(secchi$longitude, secchi$latitude, pch=1, col=cm$zcol, cex=0.5)
    title("log10 of secchi depth in m")
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
