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
# object name value unit originalName note
geosecs235 <- oceSetData(geosecs235, value=get(f,"AOU"), name="AOU",
                         unit=list(unit=expression(mu*mol/kg), scale=""), originalName="AOU")
geosecs235 <- oceSetData(geosecs235, value=get(f,"AOU"), name="AOU",
                         unit=list(unit=expression(unit=mu*mol/kg), scale=""), originalName="AOU")
geosecs235 <- oceSetData(geosecs235, value=get(f,"BOTTLE"), name="bottle",
                         unit=list(unit=expression(), scale=""), originalName="BOTTLE")
geosecs235 <- oceSetData(geosecs235, value=get(f,"Delta_C-13"), name="delta13C",
                         unit=list(unit=expression(per*mil), scale=""), originalName="Delta_C-13")
geosecs235 <- oceSetData(geosecs235, value=get(f,"Delta_C-14"), name="delta14C",
                         unit=list(unit=expression(per*mil), scale=""), originalName="Delta_C-14")
geosecs235 <- oceSetData(geosecs235, value=get(f,"DEPTH"), name="depth",
                         unit=list(unit=expression(m), scale=""), originalName="DEPTH")
geosecs235 <- oceSetData(geosecs235, value=get(f,"NO2"), name="nitrite",
                         unit=list(unit=expression(mu*mol/kg), scale=""), originalName="NO2")
geosecs235 <- oceSetData(geosecs235, value=get(f,"NO3"), name="nitrate",
                         unit=list(unit=expression(mu*mol/kg), scale=""), originalName="NO3")
geosecs235 <- oceSetData(geosecs235, value=get(f,"OXY"), name="oxygen",
                         unit=list(unit=expression(mu*mol/kg), scale=""), originalName="OXY")
geosecs235 <- oceSetData(geosecs235, value=get(f,"PCO2"), name="pCO2",
                         unit=list(unit=expression(mu*atm), scale=""), originalName="PCO2")
geosecs235 <- oceSetData(geosecs235, value=get(f,"PCO2_TEMP"), name="pCO2temperature",
                         unit=list(unit=expression(degree*C), scale="ITS-90"), originalName="PCO2_TEMP")
geosecs235 <- oceSetData(geosecs235, value=get(f,"SIGMA0"), name="sigma0",
                         unit=list(unit=expression(kg/m^3), scale=""), originalName="SIGMA0")
geosecs235 <- oceSetData(geosecs235, value=get(f,"SIGMA2"), name="sigma2",
                         unit=list(unit=expression(kg/m^3), scale=""), originalName="SIGMA2")
geosecs235 <- oceSetData(geosecs235, value=get(f,"SIGMA4"), name="sigma4",
                         unit=list(unit=expression(kg/m^3), scale=""), originalName="SIGMA4")
geosecs235 <- oceSetData(geosecs235, value=get(f,"SIO3"), name="silicate",
                         unit=list(unit=expression(mu*mol/kg), scale=""), originalName="SIO3")
geosecs235 <- oceSetData(geosecs235, value=get(f,"TALK"), name="totalAlkalinity",
                         unit=list(unit=expression(mu*equiv/kg), scale=""), originalName="TALK")
geosecs235 <- oceSetData(geosecs235, value=get(f,"THETA"), name="theta",
                         unit=list(unit=expression(degree*C), scale="ITS-90"), originalName="THETA")
geosecs235 <- oceSetData(geosecs235, value=get(f,"TCO2"), name="totalCO2",
                         unit=list(unit=expression(mu*mol/kg), scale=""), originalName="TCO2")
geosecs235 <- oceSetData(geosecs235, value=get(f,"Tritium_TU"), name="tritium",
                         unit=list(unit=expression(TU), scale=""), originalName="Tritium_TU")
save(geosecs235, file="geosecs235.rda")
tools::resaveRdaFiles("geosecs235.rda")

### summary(geosecs235)
### plotProfile(geosecs235, xtype="tritium", type='p', ylim=c(600, 0))

