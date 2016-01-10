#ftp://ftp.cdc.noaa.gov/Datasets/nodc.woa94/otemp.mnltm.nc
#ftp://ftp.cdc.noaa.gov/Datasets/nodc.woa94/salt.mnltm.nc
# Average over year, and 5-degree lat-lon blocks
library(ncdf)
library(oce)

tempnc <- open.ncdf("otemp.mnltm.nc")
saltnc <- open.ncdf("salt.mnltm.nc")
level <- get.var.ncdf(tempnc, "level")
cat("level=",level,"\n")
longitude <- get.var.ncdf(tempnc, "lon")
latitude <- get.var.ncdf(tempnc, "lat")
# flip latitude so that it goes from south to north
o  <- order(latitude)
latitude <- latitude[o]
temp <- get.var.ncdf(tempnc)[,o,,]
salt <- get.var.ncdf(saltnc)[,o,,]
temp.annual <- apply(temp, c(1,2,3), mean, na.rm=TRUE)
salt.annual <- apply(salt, c(1,2,3), mean, na.rm=TRUE)

# storage
lon5 <- seq(1, 360, 5)
lat5 <- seq(1, 180, 5)
temperature  <- array(dim=dim(temp.annual) / c(5, 5, 1))
salinity  <- array(dim=dim(salt.annual) / c(5, 5, 1))
print(dim(temperature))
print(dim(temp.annual))
print(dim(salinity))
print(dim(salt.annual))
# now the slow part: work through, a level at a time.
for (ilevel in 1:length(level)) {
    cat("ilevel=", ilevel, "\n")
    lonlon <- 1
    for (ilon in 1:length(lon5)) {
        cat("    ilon=",ilon, " ")
        for (ilat in 1:length(lat5)) {
            cat('.')
            temperature[ilon, ilat, ilevel]  <- mean(temp.annual[lon5[ilon]+0:4, lat5[ilat]+0:4, ilevel], na.rm=TRUE)
            salinity[   ilon, ilat, ilevel]  <- mean(salt.annual[lon5[ilon]+0:4, lat5[ilat]+0:4, ilevel], na.rm=TRUE)
        }
        cat("\n")
    }
}
levitus5a  <- list(salinity=salinity, temperature=temperature, depth=level, longitude=longitude[lon5], latitude=latitude[lat5])
save(levitus5a, file="levitus5a.rda")

