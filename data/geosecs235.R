stopifnot(requireNamespace("methods", quietly=TRUE),
          requireNamespace("ocedata", quietly=TRUE))

geosecs235 <-
    local({
        load(system.file(file.path("extdata", "geosecs235_slots.rda"), package="ocedata"))
        res <- new("ctd")
        slot(res, "data") <- data
        slot(res, "metadata") <- metadata
        slot(res, "processingLog") <- processingLog
        res
    })

