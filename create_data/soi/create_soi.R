library(ncdf4)
f <- nc_open("SOI.nc")
year <- as.vector(ncvar_get(f, "TIME"))
index <- as.vector(ncvar_get(f, "SOI_SIGNAL"))
ok <- is.finite(index)
year <- year[ok]
index <- index[ok]

soi <- data.frame(year=year, index=index)
save(soi, file="soi.rda")
library(tools)
tools::resaveRdaFiles("soi.rda")
