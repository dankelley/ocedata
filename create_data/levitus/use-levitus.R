library(oce)
load('levitus.rda')
par(mfrow=c(2,1))
imagep(levitus$longitude, levitus$latitude, levitus$SST, col=oceColorsJet, zlim=c(-2, 30))
imagep(levitus$longitude, levitus$latitude, levitus$SSS, col=oceColorsJet, zlim=c(20, 40))

