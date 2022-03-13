#' Time series of NASA/GISS land-ocean temperature index
#'
#' A data frame containing the Goddard Institute for Space Studies (GISS) time
#' series called LOTI (Land-Ocean Temperature Index) of surface temperature
#' anomaly.
#'
#' This is data frame with columns named `year` for decimal year (sampled
#' monthly and represented here at mid-month, i.e. the first sample in any given
#' year is at year+1/24) and `index` for the temperature anomaly.  The
#' resolution of the latter is 0.01C.  The details of the original data
#' processing are provided in References 1 and 2, and the site of the (Land-Ocean
#' Temperature Index. Anyone using the present dataset is advised very strongly
#' to read the NASA documents on changes to the processing of the data (see
#' Reference 3).
#'
#' The data were downloaded from Reference 1, yielding a text file that starts
#' as in shown below. These data were then read with R code (reference 5) that
#' skips the headers, chops out the annual means and then assigns columns to
#' year fractions, e.g. the first two numbers in the data shown below are -29
#' and -20, yielding values -0.29degC and -0.20degC, and times are here
#' represented as 1880+1/24 and 1880+3/24, i.e. 1880.042 and 1880.125.
#'
#'```
#'         GLOBAL Land-Ocean Temperature Index in 0.01 degrees Celsius   base period: 1951-1980
#'
#'                     sources:  GHCN-v3 1880-11/2015 + SST: ERSST v4 1880-11/2015
#'                     using elimination of outliers and homogeneity adjustment
#'                     Notes: 1950 DJF = Dec 1949 - Feb 1950 ;  ***** = missing
#'
#'                                                                      AnnMean
#' Year   Jan  Feb  Mar  Apr  May  Jun  Jul  Aug  Sep  Oct  Nov  Dec    J-D D-N    DJF  MAM  JJA  SON  Year
#' 1880   -29  -20  -18  -27  -14  -28  -22   -7  -16  -15  -18  -20    -19 ***   ****  -19  -19  -16  1880
#' 1881    -9  -13    2   -2   -4  -28   -5   -2   -8  -19  -25  -14    -11 -11    -14   -1  -12  -17  1881
#' 1882    10    9    2  -19  -17  -24   -9    4    0  -22  -20  -24     -9  -8      1  -11  -10  -14  1882
#'```
#'
#' @name giss
#'
#' @docType data
#'
#' @usage data(giss, package="ocedata")
#'
#' @references
#'
#' 1. Web location of the raw LOTI data:
#' \url{https://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.txt}
#'
#' 2. GISTEMP Team, 2015: GISS Surface Temperature Analysis (GISTEMP). NASA
#' Goddard Institute for Space Studies.
#' \url{https://data.giss.nasa.gov/gistemp/}
#'
#' 3. J. Hansen, R. Ruedy, M. Sato and K. Lo, 2010.  Global surface temperature
#' change.  *Rev. Geophys.*, 48, RG4004.
#' \url{https://pubs.giss.nasa.gov/abs/ha00510u.html}
#'
#' 4. Updates to analysis: \url{https://data.giss.nasa.gov/gistemp/updates_v3/}
#'
#' 5. R code to convert from NASA format to the format stored here
#' \url{https://github.com/dankelley/ocedata/blob/master/create_data/giss/create_giss.R}
NULL

