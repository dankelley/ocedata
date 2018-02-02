## http://data.giss.nasa.gov/gistemp/updates_v3/
library(ocedata)
data(giss)
gissOld <- giss
load("giss.rda") # new
gissNew <- giss
par(mar=c(1.7, 3, 1, 1), mgp=c(2, 0.7, 0), mfcol=c(3, 1))

plot(gissNew$year, gissNew$index, ylab="Index [degC]", type="l", xaxs="i", yaxs="i")
legend("topleft", lwd=1, legend=c("gissNew"), bg="white", cex=3/4)
grid()
## store the scale
xlim <- range(giss$year)
ylim <- range(giss$index)

plot(gissOld$year, gissOld$index, ylab="Index [degC]", type="l",
     xlim=xlim, ylim=ylim, xaxs="i", yaxs="i")
legend("topleft", lwd=1, legend=c("gissOld (i.e. presently in ocedata)"), bg="white", cex=3/4)
grid()

look <- gissNew$year %in% gissOld$year
plot(gissOld$year, gissOld$index - gissNew$index[look], type='l',
     ylab="Old-New [degC]", xlim=xlim, ylim=ylim, xaxs="i", yaxs="i")
grid()
abline(h=0, col='pink')
legend("topright", lwd=1, legend=c("gissOld - gissNew"), bg="white", cex=3/4)

