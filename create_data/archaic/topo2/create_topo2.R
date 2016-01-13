library(oce)
data(topoWorld)
z <- topoWorld[['z']]
topo2 <- matrixSmooth(z, passes=2)
topo2 <- z
dim <- dim(topo2)
topo2 <- z[seq.int(1L, dim[1], by=4), seq.int(1L, dim[2], by=4)]
par(mfrow=c(1,1), mar=c(3,3,1,1))
contour(z, level=0, drawlabels=FALSE)
contour(topo2, level=0, drawlabels=FALSE, add=TRUE, col='red')
z[1:16, 1:16]
topo2[1:4, 1:4]
save(topo2, file="topo2.rda")
tools::resaveRdaFiles("topo2.rda")

