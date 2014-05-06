test_that("Complete counts the total number of completely observed cases",{
    expect_that(complete('specdata', 1:1), equals(117))
    expect_that(complete('specdata', 1:3), equals(1401))
    expect_that(complete('specdata'), equals(111802))
})