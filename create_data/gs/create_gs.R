d <- read.table("gs.dat", header=TRUE)
longitude <- d$Lon
month <- 1:12
latitude <- as.matrix(d[,1+month], ncol=12)
gs <- list(month=month, longitude=longitude, latitude=latitude)
save(gs, file="gs.rda")
library(tools)
tools::resaveRdaFiles("gs.rda")

