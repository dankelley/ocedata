data(munk, package="ocedata")
A <- munk
munk <- read.table("munk.dat", header=TRUE)
B <- munk
stopifnot(identical(A, B)) # checks against existing
save(munk, file="munk.rda")
tools::resaveRdaFiles("munk.rda")

