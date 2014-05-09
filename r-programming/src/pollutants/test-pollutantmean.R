library('testthat')
source('pollutantmean.R')

test_that("Pollutant Mean calculates mean values for different measures and ranges of data",{
    expect_that(pollutantmean('specdata', 'nitrate', 1:1), equals(0.550, tolerance  = 0.001))
    expect_that(pollutantmean('specdata', 'sulfate'), equals(3.189, tolerance  = 0.001))
    expect_that(pollutantmean('specdata', 'nitrate'), equals(1.703, tolerance  = 0.001))
    expect_that(pollutantmean('specdata', 'sulfate', 1:10), equals(4.064, tolerance  = 0.001))
})