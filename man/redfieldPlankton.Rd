\name{redfieldPlankton}

\docType{data}

\alias{redfieldPlankton}

\title{Redfield's (1934) Table II}

\description{Contents of Redfield's (1934) Table II, containing columns for
    sampled species, carbon content by weight (normalized to 100), Nitrogen
    content by weight, and Phosphorus content by weight. This dataset is used in
    Chapter 4 of [1].}

\usage{data(redfieldPlankton)}

\examples{
data(redfieldPlankton, package="ocedata")
par(mfrow=c(1,2))
boxplot(redfieldPlankton$Nitrogen)
abline(h=16.7, col='gray')
boxplot(redfieldPlankton$Phosphorus)
abline(h=1.85, col='gray')
}

\source{Data entered verbatim (sans italics for species name) by Dan Kelley
    from [2] Table II.}

\references{

    1. Dan Kelley, in preparation. Oceanographic Analysis with R.  Springer Verlag.

    2. Alfred C. Redfield, 1934.  On the proportions of organic derivations in sea
    water and their relation to the composition of plankton.  Pages 177--192 in
    James Johnstone Memorial Volume, University Press of Liverpool.

}

\seealso{See \code{\link{redfieldNP}} and \code{\link{redfieldNC}}.}

\keyword{datasets}
