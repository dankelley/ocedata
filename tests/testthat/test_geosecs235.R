## vim:textwidth=80:expandtab:shiftwidth=4:softtabstop=4
context("geosecs235 class and tritium values")
test_that("geosecs235 has correct form", {
          data("geosecs235", package="ocedata")
          expect_true(inherits(geosecs235, "ctd"))
          expect_equal(geosecs235@data$tritium,
                       c(NA, 4.69999980926514, 4.40000009536743,
                         4.59999990463257, 4.80000019073486, 5, NA,
                         5.59999990463257, 7.90000009536743, 7.80000019073486,
                         10.6000003814697, 10.3000001907349, 9.10000038146973,
                         NA, 5, NA, 2.40000009536743, 0.600000023841858, NA,
                         0.100000001490116, 0, 0, 0, NA, NA, 0.100000001490116,
                         0.100000001490116, 0.200000002980232, NA, NA, NA,
                         0.100000001490116, NA, 0.100000001490116, NA, NA, NA,
                         NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
                         NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
                         NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
                         NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
                         NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
                         NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA))
})

