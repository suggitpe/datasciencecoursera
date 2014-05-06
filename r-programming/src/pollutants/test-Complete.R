test_that("Complete counts the total number of completely observed cases",{
    expect_that(complete('specdata', 1:1), equals(117))
})