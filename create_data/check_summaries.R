library(oce)
## below constructed from the files in oce/data (2016-05-12)
names <- c("RRprofile", "beaufort", "buoy", "coastlineWorldFine", "coastlineWorldMedium",
           "conveyor", "drag", "endeavour", "geosecs235", "giss", "gs", "levitus",
           "munk", "nao", "oceans", "papa", "redfieldNC", "redfieldNP", "redfieldPlankton",
           "riley", "schmitt", "secchi", "soi", "topo2", "turbulence", "wilson")
for (name in names) {
    data(list=name, package="ocedata")
    cat(paste(rep("=", 100), collapse=""), "\n")
    cat("===", name, "===\n")
    x <- get(name)
    if (inherits(x, "oce")) summary(x) else print(summary(x))
}

