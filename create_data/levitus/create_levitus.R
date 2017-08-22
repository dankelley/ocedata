library(oce)
library(ncdf4)
#con <- nc_open("temperature_annual_1deg.nc")
get <- function(f, item) {
    res <- ncvar_get(f, item)
    res <- if (1 == length(dim(res))) as.vector(res) else array(res, dim=dim(res))
    res[!is.finite(res)] <- NA
    res
}

con <- nc_open("woa13_temperature.nc")
longitude <- get(con, "lon")
latitude <- get(con, "lat")
SST <- get(con, "t_an")[,,1]
SST[SST > 100] <- NA

con <- nc_open("woa13_salinity.nc")
longitude <- get(con, "lon")
latitude <- get(con, "lat")
SSS <- get(con, "s_an")[,,1]
SSS[SSS > 100] <- NA

## Shift longitude
lon2 <- ifelse(longitude > 180, longitude - 360, longitude)
i  <- order(lon2)
longitude <- lon2[i]
SST <- SST[i, ]
SSS <- SSS[i, ]

## Save and compress
levitus <- list(longitude=longitude, latitude=latitude, SSS=SSS, SST=SST)
save(levitus, file='levitus.rda')
require(tools)
tools::resaveRdaFiles("levitus.rda")

## Check with a graph

par(mfrow=c(2,1))
imagep(levitus$longitude, levitus$latitude, levitus$SST)
imagep(levitus$longitude, levitus$latitude, levitus$SSS)

