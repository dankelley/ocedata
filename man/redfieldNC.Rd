\name{redfieldNC}

\docType{data}

\alias{redfieldNC}

\title{Redfield's (1934) NO3 and total CO2 data}

\description{Data digitized from Redfield's (1934) Figure 3, showing
    \eqn{\textrm{NO}_3}{NO3} dependence on total \eqn{\textrm{CO}_2}{CO2}.}

\usage{data(redfieldNC)}

\examples{
\dontrun{
library(oce)
data(redfieldNC)
attach(redfieldNC)
plot(CO2, NO3, xlab=expression(CO[2]), ylab=expression(NO[3]))
slope <- 1/7
abline(-275.5, slope, lwd=3)
abline(-288.5, slope, lwd=3)
detach(redfieldNC)
}
}

\source{Data digitized by Dan Kelley from a scanned copy of Redfield (1934).}

\seealso{See \code{\link{redfieldNP}} and \code{\link{redfieldPlankton}}.}

\references{
    Alfred C. Redfield, 1934.  On the proportions of organic derivations in sea
    water and their relation to the composition of plankton.  Pages 177--192 in
    James Johnstone Memorial Volume, University Press of Liverpool.
}

\keyword{datasets}
