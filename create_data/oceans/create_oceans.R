# http://ngdc.noaa.gov/mgg/global/etopo1_ocean_volumes.html
oceans <- read.table("oceans.dat")
# make area m^2
oceans$Area <- oceans$Area * 1e6
save(oceans, file="oceans.rda")
tools::resaveRdaFiles(".", compress="auto")

