# case3.R
remove.packages("oce")
remove.packages("ocedata")
#devtools::install_github("dankelley/ocedata", ref="develop") # GH
install.packages("ocedata") # CRAN
#install.packages("oce") # CRAN
devtools::install_github("dankelley/oce", ref="develop") # GH
library(oce)
data(coastlineWorldFine, package="ocedata")
Belon <- -64.7505 # Longitude of Bermuda
Belat <- 32.3078 # Latitude of Bermuda
png("case3.png")
plot(coastlineWorldFine, clongitude=Belon, clatitude=Belat, span=200, col="tan")
dev.off()

