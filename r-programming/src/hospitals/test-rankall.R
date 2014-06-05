library('testthat')
source('rankall.R')

test_that("rank all retrieves a row for each state", {
    data <- rankall("heart attack", 20)
    expect_that(nrow(data), equals(41))
})

