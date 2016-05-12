library(oce)
library(ncdf4)
f <- nc_open("geosecs235.cdf")
get <- function(f, name) { # fix NaN and make a vector, not 1-col matrix
    x <- ncvar_get(f, name)
    x[!is.finite(x)] <- NA
    as.vector(x)
}
## > unlist(lapply(seq_along(f$var), function(i) f$var[[i]]$name))
##  [1] "AOU"        "BOTTLE"     "Delta_C-13" "Delta_C-14" "DEPTH"      "lat"        "lon"        "NO2"       
##  [9] "NO3"        "OXY"        "PCO2"       "PCO2_TEMP"  "PO4"        "PRESS"      "SAL"        "SIGMA0"    
## [17] "SIGMA2"     "SIGMA4"     "SIO3"       "STA"        "TALK"       "TCO2"       "TEMP"       "THETA"     
## [25] "Tritium_TU"

oxygen <- get(f, "OXY")
nitrate <- get(f, "NO3")
nitrite <- get(f, "NO2")
phosphate <- get(f, "PO4")
silicate <- get(f, "SIO3")
tritium <- get(f, "Tritium_TU")
longitude <- get(f, "lon")
latitude <- get(f, "lat")
station <- get(f, "STA")[1]

geosecs235 <- as.ctd(salinity=get(f, "SAL"), temperature=get(f, "TEMP"), pressure=get(f, "PRESS"))
geosecs235@metadata$dataNamesOriginal <- c("", "SAL", "TEMP", "PRESS") # the "" is for scan
geosecs235@metadata$longitude <- get(f, "lon")
geosecs235@metadata$latitude <- get(f, "lat")
geosecs235@metadata$station <- get(f, "STA")[1]
geosecs235@metadata$deploymentType <- "profile"
geosecs235@metadata$filename <- "geosecs235.cdf"

## Add columns, in the order they show up in the netcdf summary.
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"AOU"), name="AOU", label="Apparent oxygen utilization",
                           unit=list(expression(unit=mu*mol/kg), scale=""), log=FALSE, originalName="AOU")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"BOTTLE"), name="bottle", label="Bottle",
                           unit=list(unit=expression(), scale=""), log=FALSE, originalName="BOTTLE")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"Delta_C-13"), name="delta13C", label="Delta 13C",
                           unit=list(unit=expression(per*mil), scale=""), log=FALSE, originalName="Delta_C-13")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"Delta_C-14"), name="delta14C", label="Delta 14C",
                           unit=list(unit=expression(per*mil), scale=""), log=FALSE, originalName="Delta_C-14")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"DEPTH"), name="depth", label="Depth",
                           unit=list(unit=expression(m), scale=""), log=FALSE, originalName="DEPTH")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"NO2"), name="nitrite", label="Nitrite",
                           unit=list(unit=expression(mu*mol/kg), scale=""), log=FALSE, originalName="NO2")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"NO3"), name="nitrate", label="Nitrate",
                           unit=list(unit=expression(mu*mol/kg), scale=""), log=FALSE, originalName="NO3")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"OXY"), name="oxygen", label="Oxygen",
                           unit=list(unit=expression(mu*mol/kg), scale=""), log=FALSE, originalName="OXY")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"PCO2"), name="pCO2", label="pCO2",
                           unit=list(unit=expression(mu*atm), scale=""), log=FALSE, originalName="PCO2")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"PCO2_TEMP"), name="pCO2temperature", label="pCO2temperature",
                           unit=list(unit=expression(degree*C), scale="ITS-90"), log=FALSE, originalName="PCO2_TEMP")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"SIGMA0"), name="sigma0", label="Sigma0",
                           unit=list(unit=expression(kg/m^3), scale=""), log=FALSE, originalName="SIGMA0")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"SIGMA2"), name="sigma2", label="Sigma2",
                           unit=list(unit=expression(kg/m^3), scale=""), log=FALSE, originalName="SIGMA2")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"SIGMA4"), name="sigma4", label="Sigma4",
                           unit=list(unit=expression(kg/m^3), scale=""), log=FALSE, originalName="SIGMA4")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"SIO3"), name="silicate", label="Silicate",
                           unit=list(unit=expression(mu*mol/kg), scale=""), log=FALSE, originalName="SIO3")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"TALK"), name="totalAlkalinity", label="TotalAlkalinity",
                           unit=list(unit=expression(mu*equiv/kg), scale=""), log=FALSE, originalName="TALK")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"THETA"), name="theta", label="theta",
                           unit=list(unit=expression(degree*C), scale="ITS-90"), log=FALSE, originalName="THETA")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"TCO2"), name="totalCO2", label="totalCO2",
                           unit=list(unit=expression(mu*mol/kg), scale=""), log=FALSE, originalName="TCO2")
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"Tritium_TU"), name="tritium", label="Tritium",
                           unit=list(unit=expression(TU), scale=""), log=FALSE, originalName="Tritium_TU")
summary(geosecs235)
save(geosecs235, file="geosecs235.rda")
tools::resaveRdaFiles("geosecs235.rda")

plotProfile(geosecs235, xtype="tritium", type='p', ylim=c(600, 0))

