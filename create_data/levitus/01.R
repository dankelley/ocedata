#ftp://ftp.cdc.noaa.gov/Datasets/nodc.woa94/otemp.mnltm.nc
#ftp://ftp.cdc.noaa.gov/Datasets/nodc.woa94/salt.mnltm.nc
z0 <- 0 # target depth
library(ncdf)
library(oce)
temp <- open.ncdf("otemp.mnltm.nc")
level <- get.var.ncdf(temp, "level")
lon <- get.var.ncdf(temp, "lon")
lat <- get.var.ncdf(temp, "lat")
o  <- order(lat)
lat <- lat[o]
the.level  <- which.min(abs(level-z0))

SST <- get.var.ncdf(temp)[,,the.level,]
SST.annual <- apply(SST, c(1,2), mean, na.rm=TRUE)[,o]
save(SST.annual, lat, lon, file="SST.rda")
salt <- open.ncdf("salt.mnltm.nc")
SSS <- get.var.ncdf(salt)[,,the.level,]
SSS.annual <- apply(SSS, c(1,2), mean, na.rm=TRUE)[,o]
save(SSS.annual, lat, lon, file="SSS.rda")

imagep(lon,lat,SSS.annual,col=oce.colors.jet,breaks=seq(-2,30,1))
imagep(lon,lat,SST.annual,col=oce.colors.jet,breaks=seq(10,40,1))
ctd <- as.ctd(as.vector(SSS.annual), as.vector(SST.annual), 0)
plotTS(ctd)

