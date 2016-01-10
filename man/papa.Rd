\name{papa}

\docType{data}

\alias{papa}

\title{OWS Papa hydrographic record during 2010}

\description{This dataset holds the temperature and salinity measured at Ocean
    Weather Station Papa (50N, 145W) in the year 2010.  Time and vertical
    coordinate are in vectors \code{papa$time} and \code{papa$z}, while
    temperature, salinity and \eqn{\sigma_\theta}{sigma_theta} are in the
    matrices \code{papa$temperature}, \code{papa$salinity} and
    \code{papa$sigmaTheta}.  This is an excerpt from a larger dataset that
    spans 2007-06-08 to 2012-10-24, and it has been trimmed to just those z
    values that are common to the larger dataset, namely -1, -10, -20, -45,
    -80, -100, -120, -150, and -200m.  Time is sampled daily, from 2011-01-01
    12:00:00 to 2011-12-31 12:00:00 UTC.}

\usage{data(papa)}

\examples{
\dontrun{
library(oce)
data(papa, package="ocedata")

par(mfrow=c(3,1))
## Page 1: images
imagep(papa$time, papa$z, papa$temperature, col=oceColorsJet, filledContour=TRUE)
imagep(papa$time, papa$z, papa$salinity, col=oceColorsJet, filledContour=TRUE)
imagep(papa$time, papa$z, papa$sigmaTheta, col=oceColorsJet, filledContour=TRUE)
## Page 2: lineplots
xlim <- c(min(papa$time)-3*28*86400, max(papa$time)) # extra for legend
plot(papa$time, papa$temperature[,1], type='l', xlim=xlim,
     xlab="", ylab="Temperature", ylim=range(papa$temperature))
for (i in 2:dim(papa$temperature)[2])
    lines(papa$time, papa$temperature[,i], col=i, lwd=2)
legend("topleft", title="z [m]", lwd=2, legend=papa$z, col=1:length(papa$z), bg="white")
plot(papa$time, papa$salinity[,1], type='l', xlim=xlim,
     xlab="", ylab="Salinity", ylim=range(papa$salinity), lwd=2)
for (i in 2:dim(papa$salinity)[2])
    lines(papa$time, papa$salinity[,i], col=i, lwd=2)
legend("topleft", title="z [m]", lwd=2, legend=papa$z, col=1:length(papa$z), bg="white")
plot(papa$time, papa$sigmaTheta[,1], type='l', xlim=xlim,
     xlab="", ylab=expression(sigma[theta]), ylim=range(papa$sigmaTheta), lwd=2)
for (i in 2:dim(papa$sigmaTheta)[2])
    lines(papa$time, papa$sigmaTheta[,i], col=i, lwd=2)
legend("topleft", title="z [m]", lwd=2, legend=papa$z, col=1:length(papa$z), bg="white")
}
}

\source{Salinity was inferred from
    \code{http://www.pmel.noaa.gov/stnP/data/daily/s50n145w_dy.ascii} and
    temperature from
    \code{http://www.pmel.noaa.gov/stnP/data/daily/t50n145w_dy.ascii}, as
    downloaded in early 2015; PMEL changed its website subsequent to that date,
    and as of early 2016 there seems to be no way to link directly to the data;
    instead, one must use a graphical interface provided at
    \url{http://www.pmel.noaa.gov/ocs/data/disdel/}, which includes filling out
    a form identifying the user and purpose. 
  
    Although there is a data file for \eqn{\sigma_\theta}{sigma-theta} on the
    NOAA website, here it was calculated with \code{swSigmaTheta} in the Oce
    package.}

\references{The larger data set is described at \url{http://www.pmel.noaa.gov/stnP/}.}
    
\keyword{datasets}
