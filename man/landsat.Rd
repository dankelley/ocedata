\name{landsat}

\docType{data}

\alias{landsat}

\title{Landsat-8 dataset}

\description{Subset of band-8 of the Landsat-8 image designated
    LC80080292014065LGN00.  The dataset covers a span of about 7km in the Minas
    Basin of the Bay of Fundy.  Visible on the right of the image, at
    mid-latitude, is the end of Cape Split.  Strong tidal currents in this
    region produce interesting currents near that spot, e.g. a hydraulic jump.
    Note the eddy train to the west of the Cape.}

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
l <- read.landsat("LC80080292014065LGN00", band=8)
landsat <- landsatTrim(l, 
                       list(longitude=-64.535, latitude=45.288),
                       list(longitude=-64.429, latitude=45.368))
}
}
   
\keyword{datasets}
