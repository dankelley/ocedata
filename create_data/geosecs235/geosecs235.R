library(oce)
library(ncdf4)
f <- nc_open("geosecs235.cdf")
NCVAR_GET <- function(f, name) { # fix NaN and make a vector, not 1-col matrix
    x <- ncvar_get(f, name)
    x[!is.finite(x)] <- NA
    as.vector(x)
}
salinity <- NCVAR_GET(f, "SAL")
temperature <- NCVAR_GET(f, "TEMP")
pressure <- NCVAR_GET(f, "PRESS")
oxygen <- NCVAR_GET(f, "OXY")
nitrate <- NCVAR_GET(f, "NO3")
nitrite <- NCVAR_GET(f, "NO2")
phosphate <- NCVAR_GET(f, "PO4")
silicate <- NCVAR_GET(f, "SIO3")
tritium <- NCVAR_GET(f, "Tritium_TU")
longitude <- NCVAR_GET(f, "lon")
latitude <- NCVAR_GET(f, "lat")
station <- NCVAR_GET(f, "STA")[1]

geosecs235 <- as.ctd(salinity=salinity, temperature=temperature, pressure=pressure,
              oxygen=oxygen, nitrate=nitrate, nitrite=nitrite, phosphate=phosphate,
              silicate=silicate, longitude=longitude, latitude=latitude,
              station=station)
geosecs235@metadata$deploymentType <- "profile"

## The following items were not in the object until 2015-09-20.
AOU <- NCVAR_GET(f, "AOU")
geosecs235 <- ctdAddColumn(geosecs235, column=tritium, name="tritium", label="Tritium", unit="TU")
TALK <- NCVAR_GET(f, "TALK")
geosecs235 <- ctdAddColumn(geosecs235, column=AOU, name="AOU", label="Apparent oxygen utilization", unit="umol/kg")
TCO2 <- NCVAR_GET(f, "TCO2")
geosecs235 <- ctdAddColumn(geosecs235, column=AOU, name="TALK", label="Total Alkalinity", unit="microEquivalents/kg")
deltaC13 <- NCVAR_GET(f, "Delta_C-13")
geosecs235 <- ctdAddColumn(geosecs235, column=deltaC13, name="Delta 13C", label="Delta 13C", unit="per mil")
deltaC14 <- NCVAR_GET(f, "Delta_C-14")
geosecs235 <- ctdAddColumn(geosecs235, column=deltaC14, name="Delta 14C", label="Delta 14C", unit="per mil")

str(geosecs235)
save(geosecs235, file="geosecs235.rda")
tools::resaveRdaFiles("geosecs235.rda")


## object contents (prior to this new code)
## > geosecs235
## ctd object has data as follows.
##    salinity: 34.43, 34.31, ...,    NA,    NA (length 120)
##    temperature: 25.7, 25.8, ...,   NA,   NA (length 120)
##    pressure:  5.0, 10.1, ...,   NA,   NA (length 120)
##    oxygen: NA, NA, ..., NA, NA (length 120)
##    nitrate: NA, NA, ..., NA, NA (length 120)
##    nitrite: NA, NA, ..., NA, NA (length 120)
##    phosphate: NA, NA, ..., NA, NA (length 120)
##    silicate: NA, NA, ..., NA, NA (length 120)
##    quality: 2, 2, ..., 2, 2 (length 120)
##    sigmaTheta: 22.699, 22.577, ...,     NA,     NA (length 120)
##    tritium:  NA, 4.7, ...,  NA,  NA (length 120)



## file contents

## float AOU[IZ,ISTA]   
## float BOTTLE[IZ,ISTA]   
## float Delta_C-13[IZ,ISTA]   
## float Delta_C-14[IZ,ISTA]   
## float DEPTH[IZ,ISTA]   
## float lat[ISTA]   
## float lon[ISTA]   
## float NO2[IZ,ISTA]   
## float NO3[IZ,ISTA]   
## float OXY[IZ,ISTA]   
## float PCO2[IZ,ISTA]   
## float PCO2_TEMP[IZ,ISTA]   
## float PO4[IZ,ISTA]   
## float PRESS[IZ,ISTA]   
## float SAL[IZ,ISTA]   
## float SIGMA0[IZ,ISTA]   
## float SIGMA2[IZ,ISTA]   
## float SIGMA4[IZ,ISTA]   
## float SIO3[IZ,ISTA]   
## float STA[IZ,ISTA]   
## float TALK[IZ,ISTA]   
## float TCO2[IZ,ISTA]   
## float TEMP[IZ,ISTA]   
## float THETA[IZ,ISTA]   
## float Tritium_TU[IZ,ISTA]   
