library(oce)

t <- read.woa("woa13_density.nc", "I_an")
longitude <- t$longitude
latitude <- t$latitude
SSdensity <- t$I_an[,,1]
#imagep(longitude, latitude, SSdensity)

t <- read.woa("woa13_nitrate.nc", "n_an")
SSnitrate <- t$n_an[,,1]

t <- read.woa("woa13_o2sat.nc", "O_an")
SSo2sat <- t$O_an[,,1]

t <- read.woa("woa13_oxygen.nc", "o_an")
SSoxygen <- t$o_an[,,1]

t <- read.woa("woa13_phosphate.nc", "p_an")
SSphosphate<- t$p_an[,,1]

t <- read.woa("woa13_salinity.nc", "s_an")
SSsalinity<- t$s_an[,,1]

t <- read.woa("woa13_silicate.nc", "i_an")
SSsilicate<- t$i_an[,,1]

t <- read.woa("woa13_temperature.nc", "t_an")
SStemperature <- t$t_an[,,1]
SStemperature[SStemperature > 100] <- NA

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

