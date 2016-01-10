## 1. fig 21 points
fig21points <- read.table("riley1946fcpp_fig21_points.dat", header=FALSE, skip=1, col.names=c("day","P"))
plot(fig21points$day, fig21points$P)#, xlim=c(100,150), ylim=c(25,40))

## 2. fig 21 curve
c <- read.table("riley1946fcpp_fig21_curve.dat", header=FALSE, skip=1, col.names=c("day","P"))
## remove backtracking (for the plot)
c <- c[order(c$day),] # remove backtracking for plot
points(c$day, c$P, cex=1/3)
## go to uniform sampling (1 day)
ss <- smooth.spline(c$day, c$P)
dayCurve <- seq(0, 365, 1)
PCurve <- predict(ss, dayCurve)$y
## develop a spline that can be used at any time
#fig21curve <- splinefun(day, P)
#lines(day, fig21curve(day), col='red')
lines(dayCurve, PCurve, col='red')

## 3. Riley's solution, in appendix columns Month, Day, Ph, R (RT in his notation, here), and G
app <- read.table("appendix.dat", header=TRUE)
t <- ISOdatetime(1946, app$Month, app$Day, hour=0, min=0, sec=0, tz="UTC")
startTime <- as.POSIXct("1946-01-01", tz="UTC")
day <- (as.numeric(t) - as.numeric(startTime)) / 86400
DEparameters <- data.frame(day=day, Ph=app$Ph, R=app$R, G=app$G)
riley <- list(fig21points=fig21points,
              fig21curve=data.frame(day=dayCurve, P=PCurve),
              DEparameters=DEparameters)
save(riley, file="riley.rda")
