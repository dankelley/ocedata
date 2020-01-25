library(oce)

coastlineWorldFine <- read.oce("ne_10m_admin_0_countries.shp")
metadata <- coastlineWorldFine@metadata
data <- coastlineWorldFine@data
processingLog <- coastlineWorldFine@processingLog
save(metadata, data, processingLog, file="coastlineWorldFine_slots.rda", version=2)
tools::resaveRdaFiles("coastlineWorldFine_slots.rda")

coastlineWorldMedium <- read.oce("ne_50m_admin_0_countries.shp")
metadata <- coastlineWorldMedium@metadata
data <- coastlineWorldMedium@data
processingLog <- coastlineWorldMedium@processingLog
save(metadata, data, processingLog, file="coastlineWorldMedium_slots.rda", version=2)
tools::resaveRdaFiles("coastlineWorldMedium_slots.rda")

