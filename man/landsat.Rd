\name{landsat}

\docType{data}

\alias{landsat}

\title{Landsat-8 dataset}

\description{Subset of the Landsat-8 image designated LC80080292014065LGN00.
    The dataset covers a span of about 30 square kilometres in the Minas Basin
    of the Bay of Fundy.  Visible on the right of the image, at mid-latitude,
    is the end of Cape Split.  Strong tidal currents in this region produce
    interesting currents in that vicininty, including hydraulic jumps, and the
    image shows some features that may be of interest.}

\examples{
\dontrun{
library(oce)
data(landsat, package="ocedata")
plot(landsat)
}
}

\usage{data(landsat)}

\source{The data were downloaded from the USGS earthexploerer website,
    \url{http://earthexplorer.usgs.gov}.  This site requires login, and then a
    fair bit of clicking around, making it a bit difficult to state the source
    precisely, but the datasetname (\code{LC80080292014065LGN00}) may be enough
    for clever users to download the data.  Warning: the data occupy a
    gigabyte.

    The code below shows how the dataset was created.

\preformatted{
library(oce)
l <- read.landsat("LC80080292014065LGN00")
landsat <- landsatTrim(l, 
                       list(longitude=-64.572, latitude=45.295),
                       list(longitude=-64.481, latitude=45.363))
}
}
   
\keyword{datasets}
