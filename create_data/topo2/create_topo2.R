library(oce)
data(topoWorld)
coarse <- decimate(topoWorld, by=4)
topo2 <- coarse[["z"]]
save(topo2, file="topo2.rda")
tools::resaveRdaFiles("topo2.rda")

