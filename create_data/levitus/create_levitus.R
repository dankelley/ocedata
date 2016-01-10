library(oce)
library(ncdf4)
con <- nc_open("/data/oar/levitus/temperature_annual_1deg.nc")
get <- function(f, item) {
    res <- ncvar_get(f, item)
    if (1 == length(dim(res))) {
        res <- as.vector(res)
    } else {
        print(dim(res))
        res <- array(res, dim=dim(res))
    }
    res[!is.finite(res)] <- NA
    str(res)
    res
}
longitude <- get(con, "lon")
latitude <- get(con, "lat")
SST <- get(con, "t_an")[,,1]
SST[SST > 100] <- NA
con <- nc_open("/data/oar/levitus/salinity_annual_1deg.nc")
SSS <- get(con, "s_an")[,,1]
SSS[SSS > 100] <- NA
levitus <- list(longitude=longitude, latitude=latitude, SSS=SSS, SST=SST)
save(levitus, file='levitus.rda')
library(tools)
tools::resaveRdaFiles("levitus.rda")

