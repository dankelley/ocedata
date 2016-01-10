library(oce)
##> source("~/src/oce/R/misc.R")
##> source("~/src/oce/R/AllClass.R")
##> source("~/src/oce/R/ctd.R")
library(ncdf4)
f <- nc_open("geosecs235.cdf")
get <- function(f, name) { # fix NaN and make a vector, not 1-col matrix
    x <- ncvar_get(f, name)
    x[!is.finite(x)] <- NA
    as.vector(x)
}
oxygen <- get(f, "OXY")
nitrate <- get(f, "NO3")
nitrite <- get(f, "NO2")
phosphate <- get(f, "PO4")
silicate <- get(f, "SIO3")
tritium <- get(f, "Tritium_TU")
longitude <- get(f, "lon")
latitude <- get(f, "lat")
station <- get(f, "STA")[1]

geosecs235 <- as.ctd(salinity=get(f, "SAL"), temperature=get(f, "TEMP"), pressure=get(f, "PRESS"),
                     longitude=get(f, "lon"), latitude=get(f, "lat"),
                     station=get(f, "STA")[1], debug=3)
geosecs235@metadata$deploymentType <- "profile"

## Add columns, in the order they show up in the netcdf summary.
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"AOU"), name="AOU", label="Apparent oxygen utilization", unit=expression(mu*mol/kg))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"BOTTLE"), name="bottle", label="Bottle", unit=expression())
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"Delta_C-13"), name="delta13C", label="Delta 13C", unit=expression(per*mil))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"Delta_C-14"), name="delta14C", label="Delta 14C", unit=expression(per*mil))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"DEPTH"), name="depth", label="Depth", unit=expression(m))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"NO2"), name="nitrite", label="Nitrite", unit=expression(mu*mol/kg))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"NO3"), name="nitrate", label="Nitrate", unit=expression(mu*mol/kg))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"OXY"), name="oxygen", label="Oxygen", unit=expression(mu*mol/kg))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"PCO2"), name="pCO2", label="pCO2", unit=expression(mu*atm))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"PCO2_TEMP"), name="pCO2temperature", label="pCO2temperature", unit=expression(degree*C))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"SIGMA0"), name="sigma0", label="Sigma0", unit=expression(kg/m^3))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"SIGMA2"), name="sigma2", label="Sigma2", unit=expression(kg/m^3))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"SIGMA4"), name="sigma4", label="Sigma4", unit=expression(kg/m^3))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"SIO3"), name="SiO3", label="SiO3", unit=expression(mu*mol/kg))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"TALK"), name="TALK", label="TALK", unit=expression(mu*equiv/kg))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"TCO2"), name="TCO2", label="TCO2", unit=expression(mu*mol/kg))
geosecs235 <- ctdAddColumn(geosecs235, column=get(f,"Tritium_TU"), name="tritium", label="Tritium", unit=expression(TU))


## The file contents (> when added to object) are as follow:
## AOU   units: micromole/kg
## BOTTLE   units: unitless
## Delta_C-13   units: per mil
## Delta_C-14   units: per mil
## DEPTH   units: m
## lat   units: degree_north
## lon   units: degree_east
## NO2   units: micromole/kg
## NO3   units: micromole/kg
## OXY   units: micromole/kg
## PCO2   units: microatm
## PCO2_TEMP   units: Celsius_scale
## PO4   units: micromole/kg
## PRESS   units: dbar
## SAL   units: PSU
## SIGMA0   units: sigma
## SIGMA2   units: sigma
## SIGMA4   units: sigma
## SO3   units: micromole/kg
## STA   units: unitless
## TALK   units: microEquivalents/kg
## TCO2   units: micromole/kg
## TEMP   units: Celsius_scale
## THETA   units: Celsius_scale
## Tritium_TU   units: unitless
summary(geosecs235)
save(geosecs235, file="geosecs235.rda")
tools::resaveRdaFiles("geosecs235.rda")

plotProfile(geosecs235, xtype="tritium", type='p', ylim=c(600, 0))

