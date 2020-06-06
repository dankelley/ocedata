## Reason for release

This is an update to 0.1-7, to address a problem with coastline drawing in oce.

## Test environments
* local macos R [4.0.0 (2020-04-24)] build/check/install status OK
* rhub::check_for_cran() OK on all responding tests, viz. Fedora Linux R-devel,
  Windows Server R-devel, and Ubuntu Linux R-release.
* ?devtools::check_win_devel() status OK
* devtools::check_win_release() status OK
* devtools::check_win_oldrelease() status OK

## R CMD check results
There were no ERRORs or WARNINGs.

## Reverse dependencies

No 'failures' or 'problems' were reported by
```
revdepcheck::revdep_check(num_workers = 4)
```


