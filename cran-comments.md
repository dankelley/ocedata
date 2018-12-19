## Test environments
* local R-3.5.1 MacOS install OK
* rhub::check_for_cran() status OK
* devtools::build_win(version="R-release") status OK
* devtools::build_win(version="R-devel") status OK

## R CMD check results
There were no ERRORs or WARNINGs.

## Reverse dependencies

devtools::revdep_check() followed by devtools::revdep_check_save_summary()
reported in revdep/timing.md as follows:

```
|package |version | check_time|
|:-------|:-------|----------:|
|oce     |1.0-1   |      307.2|
```

and in revdep/problems.md as follows for oce (1.0-1):

```
Maintainer: Dan Kelley <Dan.Kelley@Dal.Ca>  
Bug reports: https://github.com/dankelley/oce/issues

0 errors | 1 warning  | 1 note 

checking compilation flags used ... WARNING
Compilation used the following non-portable flag(s):
  ‘-Wsign-compare’

checking installed package size ... NOTE
  installed size is  9.1Mb
  sub-directories of 1Mb or more:
    R      3.0Mb
    doc    1.5Mb
    help   2.7Mb
```


