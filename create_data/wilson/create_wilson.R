wilson <- read.table("wilson1963efio_table1.data", header=TRUE, sep=",", skip=1)
save(wilson, file="wilson.rda")
tools::resaveRdaFiles("wilson.rda")

