## Cook's Endeavour 1768-1771 cruise
l <- readLines("endeavour-journal.xml")
## trim some lines so we can count back to get dates
l <- l[grep("version", l, invert=TRUE)]
l <- l[grep("journal", l, invert=TRUE)]
l <- l[grep("page", l, invert=TRUE)]
l <- l[grep("day", l, invert=TRUE)]
l <- l[grep("file", l, invert=TRUE)]
l <- l[grep("coordinate", l, invert=TRUE)]
latindex <- grep("latitude", l)
lonindex <- grep("longitude", l)
dateindex <- latindex - 1              # ignore dates unless on a station

latitude <- as.numeric(gsub("</latitude>", "", gsub("<latitude>", "", l[latindex])))
longitude <- as.numeric(gsub("</longitude>", "", gsub("<longitude>", "", l[lonindex])))
time <- as.POSIXct(gsub("</date>", "", gsub("<date>", "", l[dateindex])), "UTC")
endeavour <- data.frame(time=time, latitude, longitude)
save(endeavour, file='endeavour.rda')
library(tools)
resaveRdaFiles("endeavour.rda", compress="auto")

