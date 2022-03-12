library(oce)

t <- read.woa("woa13_temperature.nc", "t_an")
longitude <- t$longitude
latitude <- t$latitude
SST <- t$t_an[,,1]
SST[SST > 100] <- NA

t <- read.woa("woa13_salinity.nc", "s_an")
SSS <- t$s_an[,,1]
SSS[SSS > 100] <- NA

## Save and compress
levitus <- list(longitude=longitude, latitude=latitude, SSS=SSS, SST=SST)
save(levitus, file='levitus.rda')
require(tools)
tools::resaveRdaFiles("levitus.rda")

## using read.woa() is new as of Mar 8, 2018, so let's check the
## new results against the existing database. Of course, this will
## fail if we update from woa13 to woaXX (whatever that will be), but
## then we just remove the next lines, because the purpose is merely
## to check for identical values.
lev <- levitus
stopifnot(all.equal(lev$longitude, levitus$longitude))
stopifnot(all.equal(lev$latitude, levitus$latitude))
stopifnot(all.equal(lev$SST, levitus$SST))
stopifnot(all.equal(lev$SSS, levitus$SSS))

## Check with a graph
if (!interactive()) png("create_levitus.png", unit="in", width=10, height=8, res=200)
par(mfrow=c(2, 2))
imagep(levitus$longitude, levitus$latitude, levitus$SST, zlab="SSTnew")
imagep(levitus$longitude, levitus$latitude, levitus$SSS, zlab="SSSnew")
data(levitus, package="ocedata")
imagep(levitus$longitude, levitus$latitude, levitus$SST, zlab="SSTold")
imagep(levitus$longitude, levitus$latitude, levitus$SSS, zlab="SSSold")

if (!interactive()) dev.off()

