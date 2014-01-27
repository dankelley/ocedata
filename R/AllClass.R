setClass("oce",
         representation(metadata="list",
                        data="list",
                        processingLog="list"),
         prototype=list(metadata=list(),
                        data=list(),
                        processingLog=list()))

setClass("adv", contains="oce")
setClass("adp", contains="oce")
setClass("cm", contains="oce")
setClass("coastline", contains="oce")
setClass("ctd", contains="oce")
setClass("drifter", contains="oce")
setClass("echosounder", contains="oce")
setClass("gps", contains="oce")
setClass("lisst", contains="oce")
setClass("lobo", contains="oce")
setClass("met", contains="oce")
setClass("tdr", contains="oce")
setClass("sealevel", contains="oce")
setClass("section", contains="oce")
setClass("tidem", contains="oce")
setClass("topo", contains="oce")
setClass("windrose", contains="oce")

