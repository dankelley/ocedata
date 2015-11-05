## Timing tests: stringsAsFactors doesn't help much, if at all.
library(oce)
source("~/src/oce/R/oce.R")
source("~/src/oce/R/coastline.R")
message("Manual steps:")
message(" 1. visit http://www.naturalearthdata.com/downloads/110m-cultural-vectors")
message(" 2. click the link named 'Download countries' in the section called 'Admin 0 - Countries")
message(" 3. run this R file")

##> file <- "http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip"
##> temp <- tempfile()
##> download.file(file, temp)
##> filename <- unz(temp, "ne_110m_admin_0_countries.shp")
### above not much good because cannot seek in this temp file.

## TIMING TESTS before/after using stringsAsFactors=FALSE in read.table()
## BEFORE (laptop) user time: 8.857 8.393 8.333
## AFTER  (laptop) user time: 8.435 8.487 8.911
system.time(coastlineWorldFine <- read.oce("ne_10m_admin_0_countries.shp"))
save(coastlineWorldFine, file="coastlineWorldFine.rda")
tools::resaveRdaFiles("coastlineWorldFine.rda", compress="auto")
d <- coastlineWorldFine
data(coastlineWorldFine, package="ocedata")
stopifnot(all(d[["longitude"]]==coastlineWorldFine[["longitude"]], na.rm=TRUE))
stopifnot(all(d[["latitude"]]==coastlineWorldFine[["latitude"]], na.rm=TRUE))

## TIMING TESTS before/after using stringsAsFactors=FALSE in read.table()
## BEFORE (laptop) user time: 0.635 0.660 0.689
## AFTER  (laptop) user time: 0.618 0.644 0.664
system.time(coastlineWorldMedium <- read.oce("ne_50m_admin_0_countries.shp"))
save(coastlineWorldMedium, file="coastlineWorldMedium.rda")
tools::resaveRdaFiles("coastlineWorldMedium.rda", compress="auto")
d <- coastlineWorldMedium
data(coastlineWorldMedium, package="ocedata")
stopifnot(all(d[["longitude"]]==coastlineWorldMedium[["longitude"]], na.rm=TRUE))
stopifnot(all(d[["latitude"]]==coastlineWorldMedium[["latitude"]], na.rm=TRUE))
