# ocedata 0.1.8

![R-CMD-check](https://github.com/dankelley/ocedata/workflows/R-CMD-check/badge.svg)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/ocedata)](https://cran.r-project.org/package=ocedata)
![RStudio CRAN mirror downloads](https://cranlogs.r-pkg.org/badges/last-month/ocedata)
![RStudio CRAN mirror downloads](https://cranlogs.r-pkg.org/badges/last-week/ocedata)
![RStudio CRAN mirror downloads](https://cranlogs.r-pkg.org/badges/last-day/ocedata)
[![Rdoc](http://www.rdocumentation.org/badges/version/ocedata)](http://www.rdocumentation.org/packages/ocedata)


## About ocedata

The `ocedata` package supplies some oceanographic datasets, for general use and
as an adjunct to the `oce` package. Indeed, some of the datasets were once
supplied by `oce`, but they were moved to `ocedata` to reduce storage pressure
on the CRAN system, assuming that `oce` will be updated more frequently than
`ocedata`.


## Installing ocedata

Stable versions of `ocedata` may be installed from within R, in the same way as
other packages, with
```splus
install.packages("ocedata")
```
However, this version is only updated a few times a year (pursuant to CRAN
policy), so some users install `ocedata` from the github.com website instead,
to get the latest version. This is done with e.g.
```splus
library(devtools)
install_github("dankelley/ocedata", ref="main")
```

