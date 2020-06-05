# case4.R
remove.packages("oce")
remove.packages("ocedata")
#devtools::install_github("dankelley/ocedata", ref="develop")
install.packages("ocedata") # for CRAN test
#devtools::install_github("dankelley/oce", ref="develop")
install.packages("oce") # CRAN
library(oce)
data(coastlineWorldFine, package="ocedata")
Belon <- -64.7505 # Longitude of Bermuda
Belat <- 32.3078 # Latitude of Bermuda
png("case4.png")
plot(coastlineWorldFine, clongitude=Belon, clatitude=Belat, span=200, col="tan")
dev.off()

