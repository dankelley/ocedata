\name{landsat}

\docType{data}

\alias{landsat}

\title{Landsat-8 dataset}

\description{Subset of the Landsat-8 image designated LC80080292014065LGN00, an
    image from March 2014 that covers Nova Scotia and portions of the Bay of
    Fundy and the Scotian Shelf.  The image is decimated by a factor of 33,
    yielding roughly 0.5-km grid scale in the panchromatic band and 1-km scale
    in the other bands.}

\examples{
\dontrun{
library(oce)
data(landsat, package="ocedata")
plot(landsat)
}
}

\usage{data(landsat)}

\source{The original data were downloaded from the USGS earthexplorer website,
    \url{http://earthexplorer.usgs.gov}, although other sites can also be used
    to uncover it by name.  The decimation by 33 reduces file size by about a
    factor of a thousand, i.e. from a GB to a bit under 1MB. The code below
    shows how the dataset was created.
\preformatted{
library(oce)
landsat <- read.landsat("LC80080292014065LGN00")
landsat <- decimate(landsat, by=33)
}
}
   
\keyword{datasets}

