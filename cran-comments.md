## Reason for release

This update fixes broken links and lowers the dependence on other packages.

## Test environments
* local macos R [4.1.3 (2022-03-10)] build/check/install OK
* rhub::check_for_cran() OK on all responding tests, viz.
    - Fedora Linux, R-devel, clang, gfortran
    - Windows Server 2008 R2 SP1, R-devel, 32/64 bit
    - Ubuntu Linux 16.04 LTS, R-release, GCC
* devtools::check_win_release() OK
* devtools::check_win_devel() OK
* devtools::check_win_oldrelease() OK

## Reverse dependencies

No 'failures' or 'problems' were reported by
```
revdepcheck::revdep_check(num_workers = 4)
```
using `revdepcheck` as installed from github.com, because it seems not to be
present in macos R 4.1.3.

