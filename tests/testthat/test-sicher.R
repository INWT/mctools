## testthat::context("MCMAP")

## VERBOSE <- FALSE
## MCMAP <- function(...) mctools::mcMap(..., verbose = VERBOSE)


## testthat::test_that("Errors", {

##   testFun <- function(i) {
##     if (i == 1) stop("some error")
##     else if (i == 2) { try(stop("nested try-error"), silent = TRUE) }
##     else "all good"
##   }

##   testthat::expect_is(
##     MCMAP(1, testFun)[[1]],
##     "try-error"
##   )

##   testthat::expect_is(
##     MCMAP(2, testFun, errors = "stop")[[1]],
##     "try-error"
##   )

##   testthat::expect_equal(
##     MCMAP(3, testFun, errors = "stop")[[1]],
##     "all good"
##   )

##   testthat::expect_error(MCMAP(1, testFun, errors = "stop"))

## })

## testthat::test_that("Warnings", {

##   testFun <- function(i) {
##     else if (i == 1) warning("some warning")
##     else if (i == 2) { warning("first"); warning("second") }
##     else if (i == 3) suppressWarnings("nested suppress warning")
##     else "all good"
##   }

##   testthat::expect_null(MCMAP(1, testFun)[[1]])

##   testthat::expect_error(MCMAP(1, testFun, warnings = "stop"))

##   testthat::expect_equal(
##     attr(MCMAP(2, testFun, warnings = "return"), "warnings"),
##     list(list("first", "second"))
##   )

##   testthat::expect_null(MCMAP(3, testFun, warnings = "stop"))

##   testthat::expect_equal(
##     MCMAP(4, testFun, warnings = "stop"),
##     "all good"
##   )

## })

## testthat::test_that("Warnings and Errors", {

##   testFun <- function(i) {
##     else if (i == 1) { warning("first a warning"); stop("then some error") }
##     else "all good"
##   }

##   testthat::expect_is(
##     MCMAP(1, testFun),
##     "try-error"
##   )

##   testthat::expect_equal(
##     attr(MCMAP(1, testFun, warnings = "return"), "warnings"),
##     list(list("first a warning"))
##   )

##   testthat::expect_error(MCMAP(1, testFun, warnings = "stop"))

## })
