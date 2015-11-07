## http://data.giss.nasa.gov/gistemp/updates_v3/
rm(list=ls())
readGISS <- function(file)
{
    lines <- readLines(file)
    yearLine <- grep("Year", lines)
    l <- lines[seq.int(head(yearLine,1)+1, tail(yearLine,1)-1)]
    l <- l[grep("Year", l, invert=TRUE)]
    l <- l[grep("^$", l, invert=TRUE)]
    l <- gsub("\\*+", "  NA", l)
    d <- read.table(text=l)
    yearorig <- d$V1
    months <- cbind(d$V2, d$V3, d$V4, d$V5, 
                    d$V6, d$V7, d$V8, d$V9, 
                    d$V10, d$V11, d$V12, d$V13) 
    index <- as.vector(t(months)) / 100
    ## the 1/24 centres in months (at least roughly)
    year <- seq(yearorig[1], length.out=length(index), by=1/12) + 1/24
    keep <- !is.na(index)
    data.frame(year[keep], index[keep])
}
readGISS2014 <- function(file)
{
    l <- readLines(file) # http://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.txt
    l <- l[grep("^[1-2].*", l)]            # ignore headers at start, and every 20 years
    ## year is in char 1 to 4; data in 0.01degC are in char 8 to 65
    startyear <- scan(textConnection(l[1]), n=1)
    l <- substr(l, 8, 65)
    l <- l[grep("\\*+", l, invert=TRUE)]    # ignore lines with missing month data
    index <- 0.01 * scan(textConnection(l))
    year <- 1/24 + seq(startyear, by=1/12, length.out=length(index))
    data.frame(year=year, index=index)
}

library(ocedata)
data(giss)
gissNew <- readGISS("giss-20151107.dat")
gissOld <- readGISS2014("giss-2014xxxx.dat") # no spaces between * fields
## add 14 to get T.
print(giss$index[1:12])
print(gissOld$index[13:24])
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

