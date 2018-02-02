readGISS <- function(file)
{
    lines <- readLines(file, warn=FALSE) # prevent warning about incomplete last line
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

giss <- readGISS("giss.dat")
save(giss, file="giss.rda")
tools::resaveRdaFiles("giss.rda")

