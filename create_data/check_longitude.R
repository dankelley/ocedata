library(oce)
library(ocedata)
data_names <- c("RRprofile", "beaufort", "buoy", "coastlineWorldMedium",
                "coastlineWorldFine", "conveyor", "drag", "endeavour",
                "geosecs235", "giss", "gs", "levitus", "munk", "nao", "oceans",
                "papa", "redfieldNC", "redfieldNP", "redfieldPlankton",
                "riley", "schmitt", "secchi", "soi", "topo2", "turbulence",
                "wilson") 

epsilon <- 1e-5 # otherwise coastlineWorldMedium and coastlineWorldFine are flagged

for (data_name in data_names) {
    data(list=data_name, package="ocedata")
    cat(sprintf("%20s", data_name))
    x <- get(data_name)
    if ("longitude" %in% names(x)) {
        cat(sprintf("%-15s ", "$longitude"))
        lon <- x[["longitude"]]
        if (any(lon > (180+epsilon), na.rm=TRUE)) {
            cat(" BAD -- some longitudes > 180")
        } else {
            cat(" OK  -- no longitudes > 180")
        }
    } else if ("data" %in% slotNames(x)) {
        cat(sprintf("%-15s ", "@data$longitude"))
        lon <- x@data[["longitude"]]
        if (any(lon > (180+epsilon), na.rm=TRUE)) {
            cat(" BAD -- some longitudes > 180")
        } else {
            cat(" OK  -- no longitudes > 180")
        }
    } else {
        cat("                 OK  -- no $longitude or @data$longitude")
    }
    cat("\n")
}
