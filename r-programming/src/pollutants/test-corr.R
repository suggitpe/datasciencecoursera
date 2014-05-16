library('testthat')
source('corr.R')

test_that("corr returns no correlated data when the threshold is higher than the total cases", {
    expect_that(length(corr('specdata', 5000)), equals(0))
    expect_that(length(corr('specdata', 1000)), equals(3))
    expect_that(length(corr('specdata', 400)), equals(127))
    expect_that(length(corr('specdata')), equals(323))
})