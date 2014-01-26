\name{topo2}

\docType{data}

\alias{topo2}

\title{World topograph data, on a 2-degree grid.}

\description{World topograph data, on a 2-degree grid.}

\usage{data(topo2)}

\source{The data are calculated from the \code{z} entry in the
    \code{\link{topoWorld}} data, smoothed with the Oce function
    \code{matrixSmooth} with \code{passes=2}, and then subsetted to 2 degrees
    of latitude and longitude.} 

\keyword{datasets}
