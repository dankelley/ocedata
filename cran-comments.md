## Reason for release

This release remove dependence on the 'oce' package, a deficiency that Brian
Ripley generously pointed out in an email dated 2020-01-25.  The 'wrapper'
solution was employed, and Ripley's advice to investigate the Matrix package
proved to be very helpful.

## Test environments
* local [R Under development (unstable) (2020-01-21 r77682)] install OK
* local [R version 3.6.2 (2019-1-12)] install TBD
* rhub::check_for_cran() status OK
* devtools::check_win_devel() status OK
* devtools::check_win_release() status OK
* devtools::check_win_oldrelease() status OK

## R CMD check results
There were no ERRORs or WARNINGs.

## Reverse dependencies

No 'failures' or 'problems' were reported by
```
revdepcheck::revdep_check(num_workers = 4)
```


