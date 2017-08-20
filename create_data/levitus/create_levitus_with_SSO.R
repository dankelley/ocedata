library(oce)
library(ncdf4)
#con <- nc_open("temperature_annual_1deg.nc")
get <- function(f, item) {
    res <- ncvar_get(f, item)
    res <- if (1 == length(dim(res))) as.vector(res) else array(res, dim=dim(res))
    res[!is.finite(res)] <- NA
    res
}

con <- nc_open("woa13_all_o00_01.nc")
longitude <- get(con, "lon")
latitude <- get(con, "lat")
SSO <- get(con, "o_an")[,,1]
##SSO[SSO > 100] <- NA # none, actually

con <- nc_open("/data/oar/levitus/woa13_decav_t00_01.nc")
longitude <- get(con, "lon")
latitude <- get(con, "lat")
SST <- get(con, "t_an")[,,1]
SST[SST > 100] <- NA

con <- nc_open("/data/oar/levitus/woa13_decav_s00_01.nc")
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
SSO <- SSO[i, ]

## Save and compress
levitus <- list(longitude=longitude, latitude=latitude, SSS=SSS, SST=SST, SSO=SSO)
save(levitus, file='levitus.rda')
require(tools)
tools::resaveRdaFiles("levitus.rda")

