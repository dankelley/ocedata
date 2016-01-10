library(oce)
library(ocedata)
load("gs.rda")
data(coastlineWorldMedium)
plot(coastlineWorldMedium,
     clon=mean(gs$longitude), clat=mean(gs$latitude), span=3200)
data(topoWorld)
contour(topoWorld[["longitude"]]-360, 
        topoWorld[["latitude"]], -topoWorld[["z"]],
        level=1000*(1:5), col='brown', add=TRUE)
for (i in gs$month)
    lines(gs$longitude, gs$latitude[,i], col='blue')


