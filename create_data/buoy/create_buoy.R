## Data downloaded April 18, 2014 as follows:
##     curl http://www.ndbc.noaa.gov/data/realtime2/44258.txt > 44258.txt
## NOAA docs
##     http://www.ndbc.noaa.gov/NDBCHandbookofAutomatedDataQualityControl2009.pdf
##     http://www.ndbc.noaa.gov/measdes.shtml
## For more on the storm (which is why I was looking at these data), check
##     http://mashable.com/2014/03/25/developing-storm-canada/
## NOTES:
##   1. Missing-value code is MM
##   2. 2% of observations are missing (by time)
##       sum(1!=diff(buoy$t))/length(buoy$t)
##       [1] 0.02226345


## Data columns
##  #YY  MM DD hh mm WDIR WSPD GST  WVHT   DPD   APD MWD   PRES  ATMP  WTMP  DEWP  VIS PTDY  TIDE
##  #yr  mo dy hr mn degT m/s  m/s     m   sec   sec degT   hPa  degC  degC  degC  nmi  hPa    ft
##  2014 04 18 17 00 290  7.0  9.0   1.8     7    MM  MM 1034.0   0.2   1.3    MM   MM -3.0    MM
##  2014 04 18 16 00 280  8.0 10.0   1.8     7    MM  MM 1034.0   0.0   1.3    MM   MM -4.1    MM
##  2014 04 18 15 00 270  7.0  9.0   1.7     7    MM  MM 1036.3  -0.1   1.2    MM   MM -2.2    MM
d <- read.table("44258.txt", stringsAsFactors=FALSE, skip=2)
##_____1__2__3__4__5___6____7____8_____9____10____11__12_____13____14____15____16___17___18____19
time <- ISOdatetime(d[,1], d[,2], d[,3], d[,4], d[,5], 0, tz="UTC")
o <- order(time)
time <- time[o]
d[d == "MM"] <- NA                     # weird missing code
## Wind direction (the direction the wind is coming from in degrees clockwise from true N) 
direction <- as.numeric(d[,6])[o]
wind <- as.numeric(d[,7])[o]
gust <- as.numeric(d[,8])[o]
height <- as.numeric(d[,9])[o]
period <- as.numeric(d[,10])[o]
pa <- as.numeric(d[,13])[o]
Ta <- as.numeric(d[,14])[o]
Tw <- as.numeric(d[,15])[o]
buoy <- data.frame(time, wind, direction, gust, height, period, pa, Ta, Tw)
save(buoy, file="buoy.rda")
library(tools)
tools::resaveRdaFiles("buoy.rda")

