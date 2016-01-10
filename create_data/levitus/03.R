library(oce)
load("levitus5a.rda")
SSS <- levitus5a$salinity[,,1]
SST <- levitus5a$temperature[,,1]
SSS.natl <- SSS
SSS.natl[longitude<=250,] <- NA
SSS.natl[,latitude<=0] <- NA
SSS.natl[,latitude>70] <- NA
SST.natl <- SST
SST.natl[longitude<=250,] <- NA
SST.natl[,latitude<=0] <- NA
SST.natl[,latitude>70] <- NA
par(mfrow=c(4,2),mar=c(3,3,1,1),mgp=c(3/2,2/3,0))
image(longitude,latitude,SSS.natl,col=oce.colors.jet(20))
hist(SSS.natl,breaks=20, main="")
image(longitude,latitude,SST.natl,col=oce.colors.jet(20))
hist(SST.natl,breaks=20, main="")
image(longitude,latitude,SSS,col=oce.colors.jet(20))
hist(SSS,breaks=20, main="")
image(longitude,latitude,SST,col=oce.colors.jet(20))
hist(SST,breaks=seq(0,45,5), main="")

