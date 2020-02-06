presentTime <- function(tz="UTC")
{
    t <- Sys.time()
    if (!is.null(tz) && nchar(tz) > 0)
        attr(t, "tzone") <- tz
    t
}


#' Base Class for oce Objects
#'
#' This is used to create objects to be used by oce, created here by ocedata.
#'
#' @slot metadata A list containing information about the data.
#'
#' @slot data A list containing the data.
#'
#' @slot processingLog A list containing time-stamped processing steps.
setClass("oce", slots=c(metadata="list", data="list", processingLog="list"))

setClass("ctd", contains="oce")
setClass("coastline", contains="oce")

