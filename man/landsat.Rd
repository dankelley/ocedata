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
data(landsat)
plot(landsat, xlim=c(0.1, 0.15))
plot(landsat, which=2, zlim=c(0.10, 0.15))
}
}

\usage{data(landsat)}

\source{The data were downloaded from the USGS earthexploerer website,
    \url{http://earthexplorer.usgs.gov}.  This site requires login, and then a
    fair bit of clicking around, making it a bit difficult to state the source
    precisely, but the datasetname (LC80080292014065LGN00) may be enough for
    clever users to download the data.  Warning: the full data are a gigabyte.

    The code below shows how the present subset was create.

\preformatted{
library(oce)
setwd("~/Dropbox")
l <- read.landsat("LC80080292014065LGN00", band=1:11, debug=3)
landsat <- landsatTrim(l, 
                       list(longitude=-64.521, latitude=45.300),
                       list(longitude=-64.429, latitude=45.368), debug=3)
}
}
   
\keyword{datasets}
