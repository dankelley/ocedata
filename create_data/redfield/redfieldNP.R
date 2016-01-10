redfieldNP <- read.table("redfield1934otpo_fig1.dat", header=TRUE)
## millimole/litre
redfieldNP$NO3 <- redfieldNP$NO3*1000
redfieldNP$PO4 <- redfieldNP$PO4*1000
save(redfieldNP, file="redfieldNP.rda")
