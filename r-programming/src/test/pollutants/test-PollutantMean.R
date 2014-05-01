test_that("Pollutant Mean ",{
    expect_that(pollutantmean('main/pollutants/specdata/', 'nitrate', 1:1), equals(0.550, tolerance  = 0.001))
    expect_that(pollutantmean('main/pollutants/specdata/', 'sulfate'), equals(3.189, tolerance  = 0.001))
    expect_that(pollutantmean('main/pollutants/specdata/', 'nitrate'), equals(1.703, tolerance  = 0.001))
    expect_that(pollutantmean('main/pollutants/specdata/', 'sulfate', 1:10), equals(4.064, tolerance  = 0.001))
})