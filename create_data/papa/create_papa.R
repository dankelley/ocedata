## PAPA data
library(oce)

commonDepths <- c(-1, -10, -20, -45, -80, -100, -120, -150, -200) # for S and T, from 2007 to 2012

process <- function(file, var="T")
{
    depths <- strsplit(readLines(file, n=3)[3], ' +')[[1]]
    z <- -as.numeric(depths[seq.int(3, length(depths)-2)])
    ncol <- as.numeric(scan(file, character(), n=19, quiet=TRUE)[17])
    nrow <- as.numeric(scan(file, character(), n=19, quiet=TRUE)[15])
    d <- read.table(file, skip=4)
    yyyymmdd <- d[,1]
    hhmm <- d[,2]
    year <- as.numeric(substr(yyyymmdd, 1, 4))
    mon <- as.numeric(substr(yyyymmdd, 5, 6))
    day <- as.numeric(substr(yyyymmdd, 7, 8))
    hour <- as.numeric(substr(hhmm, 1, 2))
    min <- as.numeric(substr(hhmm, 3, 4))
    t <- ISOdatetime(year, mon, day, hour, min, sec=0, tz="UTC")

    var <- as.matrix(d[, seq.int(3, 2+ncol)])
    var[var < 0] <- NA
    print(z)
    print(commonDepths)
    common <- which(z %in% commonDepths)
    rval <- list(t=t, z=z[common], var=var[,common])
    class(rval) <- "papa"
    rval
}
t1 <- process("T1.dat")
t2 <- process("T2.dat")
t3 <- process("T3.dat")
t4 <- process("T4.dat")
t5 <- process("T5.dat")
s1 <- process("S1.dat")
s2 <- process("S2.dat")
s3 <- process("S3.dat")
s4 <- process("S4.dat")
s5 <- process("S5.dat")

tt <- c(t1$t, max(t1$t) + 3600, t2$t, t3$t, t4$t, t5$t)
st <- c(s1$t, max(s1$t) + 3600, s2$t, s3$t, s4$t, s5$t)
if (any(st != tt))
    stop("S and T times do not match")

t <- st
attr(t, "tzone") <- attr(t1$t[1], "tzone")

z <- t1$z
temperature <- as.matrix(rbind(t1$var, rep(NA, length(z)), t2$var, t3$var, t4$var, t5$var))
salinity <- as.matrix(rbind(s1$var, rep(NA, length(z)), s2$var, s3$var, s4$var, s5$var))
lookt <- as.POSIXlt("2011-01-01", tz="UTC") < t & t < as.POSIXlt("2012-01-01", tz="UTC")
lookz <- seq_along(z)
t <- t[lookt]
z <- z[lookz]
temperature <- temperature[lookt, lookz]
salinity <- salinity[lookt, lookz]
pressure <- -matrix(z, nrow=dim(salinity)[1], ncol=dim(salinity)[2], byrow=TRUE)
sigmaTheta <- swSigmaTheta(salinity, temperature, pressure)
ncol <- dim(salinity)[2]
papa <- list(t=t, z=as.vector(z),
             salinity=matrix(salinity, ncol=ncol),
             temperature=matrix(temperature, ncol=ncol),
             sigmaTheta=matrix(sigmaTheta, ncol=ncol))
save(papa, file="papa.rda")
