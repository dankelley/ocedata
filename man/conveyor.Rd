\name{conveyor}

\docType{data}

\alias{conveyor}

\title{Conveyor-belt path}

\description{Locations that yield a spline that roughly matches Broecker's
    conveyor-belt path.}

\examples{
\dontrun{
library(oce)
data(coastlineWorld)
par(mar=rep(1,4))
mapPlot(coastlineWorld, projection="+proj=wintri +lon_0=70")
data(conveyor, package="ocedata")
## Main path
lon <- subset(conveyor, path==1)$longitude
lat <- subset(conveyor, path==1)$latitude
mapLines(lon, lat, col="blue", lwd=3)
## Secondary path (in Indian Ocean)
lon <- subset(conveyor, path==2)$longitude
lat <- subset(conveyor, path==2)$latitude
mapLines(lon, lat, col="darkgreen", lwd=3)
}
}

\usage{data(conveyor)}

\source{The data were digitized from Figure 1 of Broecker (1991), by a
    multistep process. First, a world map was drawn with \code{mapPlot} from
    the \code{oce} package, using a projection (Mercator) that seemed similar
    to Broecker's. Second, \code{\link{locator}} was used to digitize points
    along his conveyor-belt pathlines. No projection information being provided
    by Broecker, this had to be done by coastline reference.  Third, the x-y
    data were converted to lon-lat space using \code{map2lonlat()} in the
    \code{oce} package. When this was done, splines were fitted to the data and
    the resultant paths were drawn on the map (using code like that given in
    the example). Then, some adjustments were made to the data files, to get
    the splines to more faithfully represent the paths on Broecker's diagram.}
    
\references{Broecker, W. S., 1991.  The great ocean conveyor.
    \emph{Oceanography}, 4: 79-89.}

\keyword{datasets}
