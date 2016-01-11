schmitt <- read.table('schmitt1981fott_fig1.dat', skip=1, col.names=c("S","theta"))
save(schmitt, file="schmitt.rda")
tools::resaveRdaFiles("schmitt.rda")

if (TRUE) {                            # verify that the old dataset matches this new one
    A <- schmitt
    data('schmitt', package='ocedata')
    B <- schmitt
    stopifnot(all.equal(A, B))
}

