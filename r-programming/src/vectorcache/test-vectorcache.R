library('testthat')

source('cachemean.R')
source('makevector.R')

test_that("cachemean creates the mean of an range of integers", {
    vec <- makeVector(0:10)
    expect_that(cachemean(vec), equals(5))
    # second one will use the cached data
    expect_that(cachemean(vec), equals(5))

})
