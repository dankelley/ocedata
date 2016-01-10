## http://data.giss.nasa.gov/gistemp/updates_v3/
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
    data.frame(year=year[keep], index=index[keep])
}

##> Code below was not as good as the update
##> readGISS2014 <- function(file)
##> {
##>     l <- readLines(file) # http://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.txt
##>     l <- l[grep("^[1-2].*", l)]            # ignore headers at start, and every 20 years
##>     ## year is in char 1 to 4; data in 0.01degC are in char 8 to 65
##>     startyear <- scan(textConnection(l[1]), n=1, quiet=TRUE)
##>     l <- substr(l, 8, 65)
##>     l <- l[grep("\\*+", l, invert=TRUE)]    # ignore lines with missing month data
##>     index <- 0.01 * scan(textConnection(l), quiet=TRUE)
##>     year <- 1/24 + seq(startyear, by=1/12, length.out=length(index))
##>     data.frame(year=year, index=index)
##> }

giss <- readGISS("giss-20151107.dat")
save(giss, file="giss.rda")
tools::resaveRdaFiles("giss.rda")
