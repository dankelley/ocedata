## looks in man. NOTE: fails if more than one \url{} on a line
library(RCurl)
files <- list.files("man", "*.Rd$", full.names=TRUE)
for (file in files) {
    d <- readLines(file)
    look <- grep("\\url\\{(.*)\\}", d)
    if (length(look)) {
        for (line in look) {
            if (substr(d[line], 1, 1) != "%") {
                url <- gsub('^.*\\url\\{(.*)\\}.*$', "\\1", d[line])
                status <- if (url.exists(url)) "OK " else "BAD"
                cat(sprintf("%3s %-30s %4s %-60s\n", status, file, line, url))
            }
        }
    }
}

