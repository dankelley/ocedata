## data are from App1 of grant1962
## 0905/3/10/59 appendix 1; label indicates eps=0.610cm^2/s^3 U=117cm/s
d <- read.table("195903100905.dat")
k <- d$V1
phi <- d$V2
SI <- FALSE
extra <- FALSE 
fig8 <- FALSE 
fig9 <- TRUE
if (SI) {
    ## 1D spectrum function
    ## UNIT from eq 1.2: x * 1/cm = cm^2/s^2 i.e. cm^3 / s^2
    k <- k * 100 # convert from unit 1/cm to 1/m
    phi <- phi / 1e6 # convert cm^3/s^2 to m^3 / s^2
}
##par(mfrow=c(1,2), mar=c(3, 3, 1, 1), mgp=c(2, 3/4, 0))
par(mar=c(3, 3, 1, 1), mgp=c(2, 3/4, 0))
if (fig9) {
    plot(log10(k), log10(phi), xlab=expression(log[10]*k), ylab=expression(log[10]*phi), pch=20, xlim=c(-2,1.5), ylim=c(-6,4))
    grid()
    power <- -5/3
    phi0 <- phi / k^power # scaled
    intercept <- log10(max(phi0))
    intercept <- -0.40
    abline(intercept, power)
    join <- log10(k) > 0
    lines(log10(k[join]), log10(phi[join]))
}
if (extra) {
    ## phi = phi0 * k^(-5/3)
    plot(log10(k), log10(phi0), xlab=expression(log[10]*k), ylab=expression(log[10]*phi[0]), asp=1)
    abline(intercept, 0)
}
if (fig8) {
    plot(log10(k), k*phi, xlab=expression(log[10]*k), ylab=expression(k**phi))
}

## phi = K eps^(2/3) / k^(5/3)   ... (5.1)
