presentTime <- function(tz="UTC")
{
    t <- Sys.time()
    if (!is.null(tz) && nchar(tz) > 0)
        attr(t, "tzone") <- tz
    t
}


#' Base Class for oce Objects
#'
#' This is used to create objects to be used by oce.
#'
#' @slot metadata A list containing information about the data.
#'
#' @slot data A list containing the data.
#'
#' @slot processingLog A list containing time-stamped processing steps.
setClass("oce",
         representation(metadata="list",
                        data="list",
                        processingLog="list"),
         prototype=list(metadata=list(units=list(), flags=list()),
                        data=list(),
                        processingLog=list(time=presentTime(), value="Create oce object"))
         )

