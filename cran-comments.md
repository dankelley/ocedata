## Reason for release

This updates web links and lowers the dependence on other packages.

## Test environments
* local macos R [4.1.3 (2022-03-10)] build/check/install OK
* rhub::check_for_cran()
  * Fedora Linux, R-devel, clang, gfortran: OK
  * Ubuntu Linux 20.04.1 LTS, R-release, GCC: OK
  * Windows Server 2022, R-devel, 64 bit: remnant lastMiKTeXException
* devtools::check_win_devel(): ?on R Under development (unstable) (2022-03-12 r81880 ucrt)
* devtools::check_win_release():? on R version 4.1.3 (2022-03-10)
* devtools::check_win_oldrelease(): OK on R version 4.0.5 (2021-03-31)


## Reverse dependencies

No 'failures' or 'problems' were reported by `revdepcheck::revdep_check()`.

