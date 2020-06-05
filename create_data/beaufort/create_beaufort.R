## http://www.metoffice.gov.uk/weather/marine/guide/beaufortscale.html
## downloaded 2014-04-20
b <- read.csv("beaufort_scale.txt", header=TRUE, stringsAsFactors=FALSE)
wind <- b$mps
height <- b$waveprob                   # FIXME: is this right?
ok <- wind != "-" & height != "-" & height != "14+"
beaufort <- data.frame(wind=wind[ok], height=height[ok])
save(beaufort, file="beaufort.rda")
library(tools)
resaveRdaFiles("beaufort.rda")

