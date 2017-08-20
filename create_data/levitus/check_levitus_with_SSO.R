library(oce)
load("levitus.rda")
data(coastlineWorld)

## https://water.usgs.gov/admin/memo/QW/qw11.03.pdf (agency formulae -- less risky)
## Garcia and Gordon formulation
Osolubility <- function(S, T)
{
    ## Eqn 13
    Ts <- log((298.15 - T) / (273.15 + T))
    Ts2 <- Ts * Ts
    Ts3 <- Ts * Ts2
    Ts4 <- Ts * Ts3
    Ts5 <- Ts * Ts4
    S2 <- S * S
    # Eqn 12
    DO0 <- 1.42905 * exp(2.00907 + 3.22014*Ts + 4.05010*Ts2 +
                         4.94457*Ts3 - 0.256847*Ts4 + 3.88767*Ts5)
    ## Eqn 14
    Fs <-  exp((-0.00624523 - 0.00737614*T - 0.0103410*Ts2 - 0.00817083*Ts3)*S - 4.88682e-7*S2)
    ## Eqn 1 (but using Fp=1
    DO <- DO0 * Fs
    DO
}

## http://www.mbari.org/products/research-software/matlab-scripts-oceanographic-calculations/
##
## o2satv2b – Calculate oxygen saturation (umol O2/kg) as a function of S and T
## according to Garcia & Gordon (1992).

o2sat <- function(S, T)
{
  A0 <-  2.00856

  A1 <-  3.22400
  A2 <-  3.99063
  A3 <-  4.80299
  A4 <-  9.78188e-01
  A5 <-  1.71069
  B0 <- -6.24097e-03
  B1 <- -6.93498e-03
  B2 <- -6.90358e-03
  B3 <- -4.29155e-03
  C0 <- -3.11680e-07
  
  Ts <- log((298.15 - T) / (273.15 + T))

  A <- ((((A5 * Ts + A4) * Ts + A3) * Ts + A2) * Ts + A1) * Ts + A0
  
  B <- ((B3 * Ts + B2) * Ts + B1) * Ts + B0;
  
  O2 <- exp(A + S*(B + S*C0));
  O2
}

if (!interactive()) png("create_levitus_with_SSO.png", height=4, width=7, unit="in", res=200, pointsize=9)
par(mfrow=c(2,2))
imagep(levitus$longitude, levitus$latitude, levitus$SST, zlab="SST", zlim=quantile(levitus$SST, c(0.025, 0.975), na.rm=TRUE))
lines(coastlineWorld[["longitude"]], coastlineWorld[["latitude"]], lwd=1/2, col="gray") 
imagep(levitus$longitude, levitus$latitude, levitus$SSS, zlab="SSS", zlim=quantile(levitus$SSS, c(0.025, 0.975), na.rm=TRUE))
lines(coastlineWorld[["longitude"]], coastlineWorld[["latitude"]], lwd=1/2, col="gray") 
imagep(levitus$longitude, levitus$latitude, levitus$SSO, zlab="SSO", zlim=quantile(levitus$SSO, c(0.025, 0.975), na.rm=TRUE))
lines(coastlineWorld[["longitude"]], coastlineWorld[["latitude"]], lwd=1/2, col="gray") 
SSOsol <- Osolubility(levitus$SSS, levitus$SST)
SSOsat <- o2sat(levitus$SSS, levitus$SST)
#imagep(levitus$longitude, levitus$latitude, SSOsol, zlab="SSOsol")
imagep(levitus$longitude, levitus$latitude, (levitus$SSO-SSOsat)/SSOsat*100,
       zlab="SSO supersaturation [%]", zlim=c(-10,10), drawTriangles=TRUE)
lines(coastlineWorld[["longitude"]], coastlineWorld[["latitude"]], lwd=1/2, col="gray") 

if (!interactive()) dev.off()

