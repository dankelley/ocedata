## http://data.giss.nasa.gov/gistemp/updates_v3/
library(ocedata)
data(giss)
par(mar=c(1.7, 3, 1, 1), mgp=c(2, 0.7, 0), mfcol=c(3, 2))
plot(giss$year, giss$index, type='l', ylab="Index [degC]")
legend("topleft", lwd=1, legend=c("giss in ocedata"), bg="white", cex=3/4)
grid()
## store the scale
xlim <- range(giss$year)
ylim <- range(giss$index)

plot(gissOld$year, gissOld$index, type='l', ylab="Index [degC]", xlim=xlim, ylim=ylim)
legend("topleft", lwd=1, legend=c("gissOld"), bg="white", cex=3/4)
grid()
plot(gissNew$year, gissNew$index, type='l', ylab="Index [degC]", xlim=xlim, ylim=ylim)
legend("topleft", lwd=1, legend=c("gissNew"), bg="white", cex=3/4)
grid()

start <- max(c(min(giss$year),min(gissOld$year),min(gissNew$year)))
end <- min(c(max(giss$year),max(gissOld$year),max(gissNew$year)))
look <- start<=giss$year&giss$year<=end
lookOld <- start<=gissOld$year&gissOld$year<=end
lookNew <- start<=gissNew$year&gissNew$year<=end

plot.new() # skip a panel

plot(gissOld$year[lookOld], gissOld$index[lookOld]-giss$index[look],
     type='l', ylab="index change [degC]", xlim=xlim, ylim=c(-0.3, 0.3))
grid()
abline(h=0, col='pink')
legend("topright", lwd=1, legend=c("gissOld - ocedata"), bg="white", cex=3/4)

plot(gissOld$year[lookOld], gissNew$index[lookNew]-gissOld$index[lookOld],
     type='l', ylab="index change [degC]", xlim=xlim, ylim=c(-0.3, 0.3))
grid()
abline(h=0, col='pink')
legend("topright", lwd=1, legend=c("gissNew - gissOld"), bg="white", cex=3/4)

