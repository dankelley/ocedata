rm(list=ls())
data <- matrix(scan("nao.dat", quiet=TRUE), byrow=TRUE, ncol=13)
year <- data[,1]
data <- data[,-1]
## Times align with the starts of the months ... not sure if this is correct.
year <- seq(year[1], by=1/12, length.out=length(data))
index <- as.vector(t(data))
nao <- data.frame(year=year, index=index)
save(nao, file="nao.rda")
library(tools)
resaveRdaFiles("nao.rda")

## Below was a test against the old -- they are identical
## except for new data.
if (FALSE) { # turn off because when I verified that the data were OK, I updated them
    NEW <- nao
    data("nao", package="ocedata")
    OLD <- nao
    par(mar=c(3, 3, 1, 1), mgp=c(2, 0.7, 0))
    plot(OLD$year, OLD$index, type='l', lwd=3, col='red')
    lines(NEW$year, NEW$index, col='blue')
    head(NEW)
    head(OLD)
}
