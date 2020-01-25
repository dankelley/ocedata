## vim:textwidth=80:expandtab:shiftwidth=4:softtabstop=4
context("presentTime")
test_that("presentTime is POSIXt", {
          expect_true(inherits(ocedata:::presentTime(), "POSIXt"))
})

