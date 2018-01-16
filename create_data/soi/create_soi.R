library(ncdf4)
url <- "http://www.cgd.ucar.edu/cas/catalog/climind/SOI.nc"
if (!file.exists("SOI.nc")) {
    cat("downloading file from", url, "\n")
    download.file(url, "SOI.nc")
}
f <- nc_open("SOI.nc")
year <- as.vector(ncvar_get(f, "TIME"))
index <- as.vector(ncvar_get(f, "SOI_SIGNAL"))
nc_close(f)

ok <- is.finite(index)
year <- year[ok]
index <- index[ok]

soi <- data.frame(year=year, index=index)
save(soi, file="soi.rda")
library(tools)
tools::resaveRdaFiles("soi.rda")
