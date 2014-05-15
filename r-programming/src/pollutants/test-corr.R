library('testthat')
source('corr.R')

test_that("corr returns no correlated data when the threshold is higher than the total cases", {
    expect_that(length(corr('specdata', 5000)), equals(0))
    expect_that(length(corr('specdata', 400)), equals(127))
})