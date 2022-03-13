stopifnot(requireNamespace("methods", quietly=TRUE),
    requireNamespace("ocedata", quietly=TRUE))

coastlineWorldMedium <- local({
    f <- system.file(file.path("extdata", "coastlineWorldMedium_slots.rda"), package="ocedata")
    if (nchar(f)) {
        load(f)
        res <- new("coastline")
        slot(res, "data") <- data
        slot(res, "metadata") <- metadata
        slot(res, "processingLog") <- processingLog
        res
    } else {
        NULL
    }
})

