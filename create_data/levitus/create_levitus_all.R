library(oce)
library(ncdf4)
#con <- nc_open("temperature_annual_1deg.nc")
get <- function(f, item) {
    res <- ncvar_get(f, item)
    res <- if (1 == length(dim(res))) as.vector(res) else array(res, dim=dim(res))
    res[!is.finite(res)] <- NA
    res
}

con <- nc_open("woa13_density.nc")
longitude <- get(con, "lon")
latitude <- get(con, "lat")
SSdensity <- get(con, "I_an")[,,1]

con <- nc_open("woa13_nitrate.nc")
SSnitrate <- get(con, "n_an")[,,1]

con <- nc_open("woa13_o2sat.nc")
SSo2sat <- get(con, "O_an")[,,1]

con <- nc_open("woa13_oxygen.nc")
SSoxygen <- get(con, "o_an")[,,1]

con <- nc_open("woa13_phosphate.nc")
SSphosphate<- get(con, "p_an")[,,1]

con <- nc_open("woa13_salinity.nc")
SSsalinity<- get(con, "s_an")[,,1]

con <- nc_open("woa13_silicate.nc")
SSsilicate<- get(con, "i_an")[,,1]

con <- nc_open("woa13_temperature.nc")
SStemperature <- get(con, "t_an")[,,1]
SStemperature[SStemperature > 100] <- NA

## Shift longitude
lon2 <- ifelse(longitude > 180, longitude - 360, longitude)
i  <- order(lon2)
longitude <- lon2[i]
SSdensity <- SSdensity[i, ]
SSnitrate <- SSnitrate[i, ]
SSo2sat <- SSo2sat[i, ]
SSoxygen <- SSoxygen[i, ]
SSphosphate <- SSphosphate[i, ]
SSsalinity <- SSsalinity[i, ]
SSsilicate <- SSsilicate[i, ]
SStemperature <- SStemperature[i, ]

## Save and compress
levitus <- list(longitude=longitude, latitude=latitude,
                SSdensity=SSdensity,
                SSnitrate=SSnitrate,
                SSo2sat=SSo2sat,
                SSoxygen=SSoxygen,
                SSphosphate=SSphosphate,
                SSsalinity=SSsalinity,
                SSsilicate=SSsilicate,
                SStemperature=SStemperature)
save(levitus, file='levitus_all.rda')
tools::resaveRdaFiles("levitus_all.rda")

