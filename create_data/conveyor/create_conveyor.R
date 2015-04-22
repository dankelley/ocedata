conveyor <- read.table("conveyor.dat", header=TRUE)
save(conveyor, file="conveyor.rda")
tools::resaveRdaFiles("conveyor.rda")

