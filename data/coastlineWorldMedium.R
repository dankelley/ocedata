stopifnot(requireNamespace("methods", quietly=TRUE),
          requireNamespace("ocedata", quietly=TRUE))

coastlineWorldMedium <-
    local({
        load(system.file(file.path("extdata", "coastlineWorldMedium_slots.rda"), package="ocedata"))
        res <- new("oce")
        slot(res, "data") <- data
        slot(res, "metadata") <- metadata
        slot(res, "processingLog") <- processingLog
        class(res) <- structure("coastline", package = "ocedata")
        res
    })

