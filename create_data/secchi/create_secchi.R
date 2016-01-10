library(oce)
d <- read.csv('secchi_ships.csv.gz', header=TRUE)
hms <- numberAsHMS(d$Time)
time <- ISOdatetime(d$Year, d$Month, d$Day, hms$hour, hms$minute, hms$second)
secchi <- data.frame(latitude=d$Lat, longitude=d$Lon, depth=d$Secchi, time=time)
save(secchi, file='secchi.rda')
library(tools)
resaveRdaFiles('secchi.rda')

