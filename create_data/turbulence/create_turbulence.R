## data are from App1 of grant1962
## 0905/3/10/59 appendix 1; label indicates eps=0.610cm^2/s^3 U=117cm/s
d <- read.table("195903100905.dat")
k <- d$V1
phi <- d$V2
SI <- FALSE
if (SI) {                              # Convert to SI
    k <- k * 1e2                       # convert cm^(-1) to m^(-1)
    phi <- phi / 1e6                   # convert cm^3*s^(-2) to m^3*s^(-2)
}
turbulence <- data.frame(k, phi)
save(turbulence, file="turbulence.rda")
tools::resaveRdaFiles("turbulence.rda")

