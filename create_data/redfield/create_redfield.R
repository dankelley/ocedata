library(tools)
redfieldNC <- read.table("redfield1934otpo_fig3.dat", header=TRUE)
save(redfieldNC, file="redfieldNC.rda")
resaveRdaFiles("redfieldNC.rda")

redfieldNP <- read.table("redfield1934otpo_fig1.dat", header=TRUE)
redfieldNP$NO3 <- redfieldNP$NO3*1000 # millimole/litre
redfieldNP$PO4 <- redfieldNP$PO4*1000 # millimole/litre
save(redfieldNP, file="redfieldNP.rda")
resaveRdaFiles("redfieldNP.rda")

redfieldPlankton <- read.table("redfieldPlankton.dat", sep=":",header=TRUE)
save(redfieldPlankton, file="redfieldPlankton.rda")
resaveRdaFiles("redfieldPlankton.rda")

