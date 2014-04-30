test_that("Pollutant Mean ",{
    expect_that(pollutantmean('specdata', 'sulftate'), equals(0.11))
    expect_that(pollutantmean('specdata', 'nitrate'), equals(23.5))
    expect_that(pollutantmean('specdata', 'sulfate', 1:10), equals(23.5))
})