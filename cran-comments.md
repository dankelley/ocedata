## Reason for release

This update fixes broken links and lowers the dependence on other packages.

## Test environments
* local macos R [4.1.3 (2022-03-10)] build/check/install OK
* rhub::check_for_cran() -- system is unresponsive
* devtools::check_win_devel() -- OK on R Under development (unstable) (2022-03-12 r81880 ucrt)
* devtools::check_win_release() -- OK on R version 4.1.3 (2022-03-10)
* devtools::check_win_oldrelease() -- OK on R version 4.0.5 (2021-03-31)

## Reverse dependencies

No 'failures' or 'problems' were reported by
```
revdepcheck::revdep_check(num_workers = 4)
```
using `revdepcheck` as installed from github.com, because it seems not to be
present in macos R 4.1.3.

