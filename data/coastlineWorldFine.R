stopifnot(requireNamespace("methods", quietly=TRUE),
          requireNamespace("ocedata", quietly=TRUE))

coastlineWorldFine <-
    local({
        load(system.file(file.path("extdata", "coastlineWorldFine_slots.rda"), package="ocedata"))
        res <- new("oce")
        slot(res, "data") <- data
        slot(res, "metadata") <- metadata
        slot(res, "processingLog") <- processingLog
        class(res) <- structure("coastline", package = "ocedata")
        res
    })

