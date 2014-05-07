library('testthat')
source('readdata.R')

test_that("Read data reads the data files correctly",{
    expect_that(nrow(createRangedDataframeFromFilesIn('specdata', 1:2)), equals(5113))
    expect_that(class(createRangedDataframeFromFilesIn('specdata', 1:2)), equals('data.frame'))
    expect_that(nrow(createRangedDataframeFromFilesIn('specdata', 1:332)), equals(772087))    
})